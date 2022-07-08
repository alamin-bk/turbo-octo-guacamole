#!/bin/sh

while ! awslocal sqs list-queues --region ap-southeast-1;
do
 echo "----------------- WAITING FOR SQS SERVICE --------------------"
 sleep 0.1 # wait for 1/10 of the second before check again
done

echo "----------------- START CREATING QUEUE -----------------"

awslocal sqs create-queue --queue-name retry_request --region ap-southeast-1

echo "----------------- COMPLETE CREATING QUEUE -----------------"

while ! awslocal sqs list-queues --region ap-southeast-1;
do
 sleep 0.1 # wait for 1/10 of the second before check again
done