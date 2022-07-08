#!/bin/bash

# Put Parameter to SSM
aws ssm put-parameter --name "dev-visa-base2processor-source-sftp-use-ssh" --type String --value "no" \
  --overwrite --endpoint=http://localhost:4566
aws ssm put-parameter --name "dev-visa-base2processor-sftp-source-host" --type String --value "0.0.0.0" \
  --overwrite --endpoint=http://localhost:4566
aws ssm put-parameter --name "dev-visa-base2processor-sftp-source-port" --type String --value "2202" \
  --overwrite --endpoint=http://localhost:4566
aws ssm put-parameter --name "dev-visa-base2processor-sftp-source-username" --type String --value "bkash" \
  --overwrite --endpoint=http://localhost:4566
aws ssm put-parameter --name "dev-visa-base2processor-sftp-source-password" --type String --value "visa" \
  --overwrite --endpoint=http://localhost:4566
aws ssm put-parameter --name "dev-visa-base2processor-sftp-source-private-key" --type String --value "" \
  --overwrite --endpoint=http://localhost:4566
aws ssm put-parameter --name "dev-visa-base2processor-sftp-source-base-path" --type String --value "upload/" \
  --overwrite --endpoint=http://localhost:4566

aws ssm put-parameter --name "dev-visa-base2processor-destination-sftp-use-ssh" --type String --value "no" \
  --overwrite --endpoint=http://localhost:4566
aws ssm put-parameter --name "dev-visa-base2processor-sftp-destination-host" --type String --value "0.0.0.0" \
  --overwrite --endpoint=http://localhost:4566
aws ssm put-parameter --name "dev-visa-base2processor-sftp-destination-port" --type String --value "2203" \
  --overwrite --endpoint=http://localhost:4566
aws ssm put-parameter --name "dev-visa-base2processor-sftp-destination-username" --type String --value "bkash" \
  --overwrite --endpoint=http://localhost:4566
aws ssm put-parameter --name "dev-visa-base2processor-sftp-destination-password" --type String --value "visa" \
  --overwrite --endpoint=http://localhost:4566
aws ssm put-parameter --name "dev-visa-base2processor-sftp-destination-private-key" --type String --value "" \
  --overwrite --endpoint=http://localhost:4566
aws ssm put-parameter --name "dev-visa-base2processor-sftp-destination-base-path" --type String --value "upload/" \
  --overwrite --endpoint=http://localhost:4566