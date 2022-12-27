Cat <<EOF>> aws_ami_age.sh

aws ec2 describe-instances --query 'Reservations[].Instances[].[ImageId]'  --output text | xargs -I{} aws ec2 describe-images --image-id {} --query 'Images[*].[ImageId]' --output text | sort -u | xargs -I{} aws ec2 describe-images --image-id {} --query 'Images[*].[ImageID,Name,CreationDate]' --output table


AMI_CD=$(aws ec2 describe-instances --query 'Reservations[].Instances[].[ImageId]'  --output text | xargs -I{} aws ec2 describe-images --image-id {} --query 'Images[*].[ImageId]' --output text | sort -u | xargs -I{} aws ec2 describe-images --image-id {} --query 'Images[*].[CreationDate]' --output text | awk -F 'T' '{print $1}')


echo "$AMI_CD" | xargs -n1 |  while read p ;

do

TODAY_DATE=$(date +%j)

echo "Calculating no of days"

AMI_DAYS_OLD=$(date -d $p +%j)

sleep 3s

echo "TODAY_DATE: $TODAY_DATE"

echo "Age of AMI is $(($TODAY_DATE-$AMI_DAYS_OLD))"

done
