Arrays?
Declare/Define arrays?
Access Arrays Values?
Types of arrays?
delete, update, values in array?
read command to read values to insert in array?
array is the data strucutre of the bash shell, which is used to store multiple values (can be integer, string, command)

11 22 33 44 55 66 77 88
0   1  2  3  4  5  6  7
                      -1

0 prints first value
-1 last value

Assignment
array element 11 and array position/index 0

index array
kayvalue/associative arrays
############################################### CLI ###########
[ec2-user@ip-10-0-30-99 ~]$ myArray=(11 22 33 44 55 66 77 88)
[ec2-user@ip-10-0-30-99 ~]$ echo ${myArray}
11
[ec2-user@ip-10-0-30-99 ~]$ echo "${myArray}"
11
[ec2-user@ip-10-0-30-99 ~]$ echo ${myArray[*]}
11 22 33 44 55 66 77 88
[ec2-user@ip-10-0-30-99 ~]$ echo ${myArray[1]}
22
[ec2-user@ip-10-0-30-99 ~]$ echo ${myArray[1]}
22
[ec2-user@ip-10-0-30-99 ~]$ echo ${myArray[1]:2}

[ec2-user@ip-10-0-30-99 ~]$ echo ${myArray[1]}
22
[ec2-user@ip-10-0-30-99 ~]$ echo ${myArray[0]}
11
[ec2-user@ip-10-0-30-99 ~]$ echo ${myArray[-1]}
88
[ec2-user@ip-10-0-30-99 ~]$ echo ${myArray[*]:2}
33 44 55 66 77 88
[ec2-user@ip-10-0-30-99 ~]$ echo ${myArray[*]3:6}
77 88
[ec2-user@ip-10-0-30-99 ~]$ echo ${myArray[*]1:2}
33 44 55 66 77 88
[ec2-user@ip-10-0-30-99 ~]$ echo ${myArray[*]:1:2}
22 33
[ec2-user@ip-10-0-30-99 ~]$ echo ${myArray[*]:1:2}
22 33
[ec2-user@ip-10-0-30-99 ~]$ echo ${myArray[*]:3:7}
44 55 66 77 88
[ec2-user@ip-10-0-30-99 ~]$ echo ${!myArray[*]:3:7}

[ec2-user@ip-10-0-30-99 ~]$ echo ${!myArray[*]}
0 1 2 3 4 5 6 7
[ec2-user@ip-10-0-30-99 ~]$ echo ${myArray[*]}
11 22 33 44 55 66 77 88
[ec2-user@ip-10-0-30-99 ~]$ echo ${#myArray[*]}
8
[ec2-user@ip-10-0-30-99 ~]$ myArray[3]=42
[ec2-user@ip-10-0-30-99 ~]$ echo ${myArray[*]}
11 22 33 42 55 66 77 88

[ec2-user@ip-10-0-30-99 ~]$ command_array=($(date) $(hostname))
[ec2-user@ip-10-0-30-99 ~]$ echo ${command_array[*]}
Mon 14 Nov 06:09:36 UTC 2022 ip-10-0-30-99.us-east-2.compute.internal
[ec2-user@ip-10-0-30-99 ~]$ echo ${command_array[2]}
Nov
[ec2-user@ip-10-0-30-99 ~]$ echo ${myArray[*]}
11 22 33 42 55 66 77 88
[ec2-user@ip-10-0-30-99 ~]$ myArray+=(99 111 222 333)
[ec2-user@ip-10-0-30-99 ~]$ echo ${myArray[*]}
11 22 33 42 55 66 77 88 99 111 222 333

[ec2-user@ip-10-0-30-99 ~]$ read -p "Enter your array values" -a dArray
Enter your array values123
[ec2-user@ip-10-0-30-99 ~]$ read -p "Enter your array values" -a dArray
Enter your array values123 456 789 101
[ec2-user@ip-10-0-30-99 ~]$ 
[ec2-user@ip-10-0-30-99 ~]$ 
[ec2-user@ip-10-0-30-99 ~]$ echo ${dArray[*]}
123 456 789 101
###############################
[ec2-user@ip-10-0-30-99 ~]$ 
[ec2-user@ip-10-0-30-99 ~]$ echo ${!fb_array[@]}
0
[ec2-user@ip-10-0-30-99 ~]$ fb_array=([org_name]="flewbirds" [batch_name]="eagle Batch" [faculty]="Rama Krishna")
[ec2-user@ip-10-0-30-99 ~]$ 
[ec2-user@ip-10-0-30-99 ~]$ 
[ec2-user@ip-10-0-30-99 ~]$ 
[ec2-user@ip-10-0-30-99 ~]$ declare -A fb-array=()
-bash: syntax error near unexpected token `('
[ec2-user@ip-10-0-30-99 ~]$ declare -A fb_array=()
-bash: fb_array: cannot convert indexed to associative array
-bash: fb_array: cannot convert indexed to associative array
[ec2-user@ip-10-0-30-99 ~]$ unset fb_array
[ec2-user@ip-10-0-30-99 ~]$ declare -A fb_array=()
[ec2-user@ip-10-0-30-99 ~]$ 
[ec2-user@ip-10-0-30-99 ~]$ 
[ec2-user@ip-10-0-30-99 ~]$ fb_array=([org_name]="flewbirds" [batch_name]="eagle Batch" [faculty]="Rama Krishna")
[ec2-user@ip-10-0-30-99 ~]$ 
[ec2-user@ip-10-0-30-99 ~]$ 
[ec2-user@ip-10-0-30-99 ~]$ for each in "${!fb_array[@]}"; do echo "Key: $each and Value is ${fb_array[$each]}"; doneKey: batch_name and Value is eagle Batch
Key: faculty and Value is Rama Krishna
Key: org_name and Value is flewbirds
[ec2-user@ip-10-0-30-99 ~]$ 
[ec2-user@ip-10-0-30-99 ~]$ 
[ec2-user@ip-10-0-30-99 ~]$ for each in "${!fb_array[@]}"; do echo "Key: $each and Value is ${fb_array[$each]}"; done 
Key: batch_name and Value is eagle Batch
Key: faculty and Value is Rama Krishna
Key: org_name and Value is flewbirds
[ec2-user@ip-10-0-30-99 ~]$ 
[ec2-user@ip-10-0-30-99 ~]$ 
[ec2-user@ip-10-0-30-99 ~]$ 
[ec2-user@ip-10-0-30-99 ~]$ 
[ec2-user@ip-10-0-30-99 ~]$ echo ${fb_array[@]}
eagle Batch Rama Krishna flewbirds
[ec2-user@ip-10-0-30-99 ~]$ 
[ec2-user@ip-10-0-30-99 ~]$ 
[ec2-user@ip-10-0-30-99 ~]$ 
[ec2-user@ip-10-0-30-99 ~]$ echo ${fb_array[batch_name]}
eagle Batch

########################

