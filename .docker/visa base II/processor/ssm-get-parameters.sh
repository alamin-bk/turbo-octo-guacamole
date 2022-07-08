#!/bin/bash

# get Parameter to SSM
awslocal ssm get-parameter --name "dev-visa-base2processor-source-sftp-use-ssh"
awslocal ssm get-parameter --name "dev-visa-base2processor-destination-sftp-use-ssh"