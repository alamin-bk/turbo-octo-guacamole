#!/bin/bash
filename='ssm-values.txt'
while read -r line; do
    IFS='<>' read -ra my_array <<< "$line"
    #echo "Line : "$line;
    echo "Inserting : Key : "${my_array[0]};
    awslocal ssm put-parameter --name "${my_array[0]}" --type String --value "${my_array[2]}" --overwrite --region ap-southeast-1;
done < $filename

#
# aws ssm describe-parameters --output table --endpoint-url http://localhost:4583 --region ap-southeast-1;
# awslocal ssm put-parameter --name "/dev/bkash2bank/standardmw/cps/addmoney/InitiatorIdentifierId/SBL" --type String --value "Sonali_OP" --overwrite --endpoint-url http://localhost:4566 --region ap-southeast-1;