#!/bin/bash
for i in $(ls *.json);
    do 
        echo "Creating Table : "$i
        aws dynamodb create-table --cli-input-json file://$i --region "ap-southeast-1" --endpoint-url http://localhost:4566;
done;