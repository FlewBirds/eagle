#Script to deomonstrate associative arrays.
# run script ---> #arrays.sh 

fb_array=([org_name]="flewbirds" [batch_name]="eagle Batch" [faculty]="Rama Krishna") 

for each in "${fb_array[@]}"
do
  echo "key $each = value ${fb_array[$i]}"
done
