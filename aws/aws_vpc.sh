# 1. VPC 10.0.0.0/16
# 2. Subnets
#     eagle-sub-pub 10.0.1.0/24
#     eagle-sub-prv 10.0.2.0/24
    
# 3. public route table
# 4. private route table
# 5. igw - internet gateway - launched in vpc
# 6. Add route of internet gateway to pubsubnet 0.0.0.0/0 igw
# 7. allocate Eip
# 8. create natgateway and associate EIP
# 9. update route table with natgwateway
# 10. add toute of nat gateway to prvsubnet 0.0.0.0/0 ngw


EVPC_ID=$(aws ec2 create-vpc --cidr-block 10.0.0.0/16 --tag-specifications 'ResourceType=vpc,Tags=[{Key=Name,Value=EVPC}]'  --output text --query Vpc.VpcId)

sleep 5s
echo "VPC ID: $EVPC_ID"
Eagle_PUB_SUB_ID=$(aws ec2 create-subnet --vpc-id $EVPC_ID --cidr-block 10.0.1.0/24 --availability-zone us-east-1b --tag-specifications 'ResourceType=subnet,Tags=[{Key=Name,Value=Eagle_PUB_SUB}]' --output text --query Subnet.SubnetId)

sleep 5s
echo "PUB SUB ID: $Eagle_PUB_SUB_ID"
Eagle_PRV_SUB_ID=$(aws ec2 create-subnet --vpc-id $EVPC_ID --cidr-block 10.0.2.0/24 --availability-zone us-east-1c --tag-specifications 'ResourceType=subnet,Tags=[{Key=Name,Value=Eagle_PRV_SUB}]' --output text --query Subnet.SubnetId)

sleep 5s
echo "PRV_SUB_ID: $Eagle_PRV_SUB_ID"
Eagle_RT_PUB_ID=$(aws ec2 create-route-table --vpc-id $EVPC_ID --tag-specifications 'ResourceType=route-table,Tags=[{Key=Name,Value=Eagle_RT_PUB}]' --output text --query RouteTable.RouteTableId)

sleep 5s
echo "Eagle_RT_PUB_ID: $Eagle_RT_PUB_ID"
Eagle_RT_PRV_ID=$(aws ec2 create-route-table --vpc-id $EVPC_ID --tag-specifications 'ResourceType=route-table,Tags=[{Key=Name,Value=Eagle_RT_PRV}]' --output text --query RouteTable.RouteTableId)

sleep 5s
echo "Eagle_RT_PRV_ID: $Eagle_RT_PRV_ID"
Eagle_IGW_ID=$(aws ec2 create-internet-gateway --tag-specifications 'ResourceType=internet-gateway,Tags=[{Key=Name,Value=Eagle_IGW}]' --output text --query InternetGateway.InternetGatewayId)

sleep 5s
echo "Eagle_IGW_ID: $Eagle_IGW_ID"
Eagle_EIP_Allocation_ID=$(aws ec2 allocate-address --domain vpc --tag-specifications 'ResourceType=elastic-ip,Tags=[{Key=Name,Value=FB_EIP_NGW}]' --output text --query AllocationId)

sleep 5s
echo "Eagle_EIP_Allocation_ID: $Eagle_EIP_Allocation_ID"
Eagle_NGW_ID=$(aws ec2 create-nat-gateway --subnet-id $Eagle_PUB_SUB_ID --allocation-id $Eagle_EIP_Allocation_ID --tag-specifications 'ResourceType=natgateway,Tags=[{Key=Name,Value=Eagle_NGW}]' --output text --query NatGateway.NatGatewayId)

sleep 120s
echo "Eagle_NGW_ID: $Eagle_NGW_ID"
aws ec2 associate-route-table --route-table-id $Eagle_RT_PUB_ID --subnet-id $Eagle_PUB_SUB_ID

aws ec2 associate-route-table --route-table-id $Eagle_RT_PRV_ID --subnet-id $Eagle_PRV_SUB_ID

#Attach InternetGateway to EVPC
aws ec2 attach-internet-gateway --internet-gateway-id $Eagle_IGW_ID --vpc-id $EVPC_ID

#Add IGW route in Publicsubnet
aws ec2 create-route --route-table-id $Eagle_RT_PUB_ID  --destination-cidr-block 0.0.0.0/0 --gateway-id  $Eagle_IGW_ID

#Add NGW Route in private subnet
aws ec2 create-route --route-table-id $Eagle_RT_PRV_ID --destination-cidr-block 0.0.0.0/0 --nat-gateway-id $Eagle_NGW_ID




