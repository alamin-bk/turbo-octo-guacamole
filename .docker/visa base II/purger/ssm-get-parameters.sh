#!/bin/bash

# get Parameter to SSM
awslocal ssm get-parameter --name "dev-visa-base2purger-source-sftp-use-ssh"
awslocal ssm get-parameter --name "dev-visa-base2purger-destination-sftp-use-ssh"
