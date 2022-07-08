#!/bin/sh

while ! awslocal ssm describe-parameters --output table --region ap-southeast-1;
do
 echo "----------------- WAITING FOR SSM SERVICE -----------------"
 sleep 0.1 # wait for 1/10 of the second before check again
done


echo "--------------- START SETTING SSM PARAMETER ---------------"

awslocal ssm put-parameter --name "dev-bkash2bank-bank-city-apiurl-protocol" --type String --value "https" --overwrite  --region ap-southeast-1
awslocal ssm put-parameter --name "dev-bkash2bank-bank-city-apiurl" --type String --value "servicestest.thecitybank.com:8088/cApps/services/CBLWebServices?wsdl" --overwrite  --region ap-southeast-1
awslocal ssm put-parameter --name "dev-bkash2bank-bank-city-username" --type String --value "gs001" --overwrite --region ap-southeast-1
awslocal ssm put-parameter --name "dev-bkash2bank-bank-city-password" --type String --value "1234" --overwrite --region ap-southeast-1
awslocal ssm put-parameter --name "dev-bkash2bank-bank-city-bkashdebitaccount" --type String --value "2251542650001" --overwrite --region ap-southeast-1
awslocal ssm put-parameter --name "dev-bkash2bank-bank-city-currencycode" --type String --value "BDT" --overwrite --region ap-southeast-1
awslocal ssm put-parameter --name "dev-bkash2bank-bank-brac-apiurl" --type String --value "bkash-api-test.bracbank.com:8085/api/dfs" --overwrite --region ap-southeast-1
awslocal ssm put-parameter --name "dev-bkash2bank-bank-brac-apiurl-protocol" --type String --value "https" --overwrite --region ap-southeast-1
awslocal ssm put-parameter --name "dev-bkash2bank-bank-brac-username" --type String --value "bkash" --overwrite --region ap-southeast-1
awslocal ssm put-parameter --name "dev-bkash2bank-bank-brac-password" --type String --value "bkashtest" --overwrite --region ap-southeast-1
awslocal ssm put-parameter --name "dev-bkash2bank-bank-agrani-apiurl-protocol" --type String --value "https" --overwrite --region ap-southeast-1
awslocal ssm put-parameter --name "dev-bkash2bank-bank-agrani-apiurl" --type String --value "fex.agranibank.org/bkashuat" --overwrite --region ap-southeast-1
awslocal ssm put-parameter --name "dev-bkash2bank-bank-agrani-credential" --type String --value "Pass" --overwrite --region ap-southeast-1
awslocal ssm put-parameter --name "dev-bkash2bank-bank-agrani-excode" --type String --value "Bkash" --overwrite --region ap-southeast-1

awslocal ssm put-parameter --name "/dev/capp/cps/caller/id" --type String --value "RND_TEST" --overwrite --region ap-southeast-1
awslocal ssm put-parameter --name "/dev/capp/cps/caller/pass" --type String --value "HwCVyouSb/bcuwdK7SIy8vo3a22kb8oeIe8PZo1yyURTRJz0IDY5OtkFlKtMR3F8yITXgfzbaItK1vc5ySCOKfqOoss3BWZXm3I9shWmjbNYP8rTmqLPqTlosenUCPZisgFltTWFsHKAGBzYWs5ALPke7cw1iAav1bb+v2n2B2/EbQg+QEOgLc8ggD+pomQqmOr4wPD4j4UHEIM6TdiFAcP+AzEqG+XqmvfqeF+wCpiW5GZ8KQtmRXH7BrMIZCLylrLZ9MLA8GY61Pnsu5/lbD4kSUXno6jOggfRAebvEOREQ29bRFcjKD8Y0O60Iadxpso5dL9jP00Nss0SMjpSi8F33PvO2Z4Ur2u9mFRuedGsY6EietdgABn0UIHi1Ne9g3HEFqRrIyWosDFB3JLYv31LaP4nAzVOpAKK2Rku1rGbqt5M20wdPkqWom7mKxwQ5R0L9uv9RNmYkr8AJpr2K216Od/Uuc900sJ08EcbRbXz1fQuuErnA0Y26KeuZQwHeVKeiRTj+lwL0f5ItIFne09yM/pzPCQd9hFR0U5TzBN1CnM6DsIXGCmtEZ2ryPbjQm65dKMVs0phGzEAukmcZaVP7N6CLBObn8ZmGQKZW+GQJfZhbFdV0qfb7hNzl733675uChiuBT2U2gXztSgGSuqBj15z2JapBIuNLWQ9Btc=" --overwrite --region ap-southeast-1

awslocal ssm put-parameter --name "/dev/capp/cps/sp/id" --type String --value "RND_TEST_API" --overwrite --region ap-southeast-1
awslocal ssm put-parameter --name "/dev/capp/cps/sp/pass" --type String --value "<>OkGCgR7PWJIQbnHwzfSfeWr/SiU2YKe+jbElRBNvcepsASxeZ1kmYjakHV6I8sWoNI6YtdGsBm6Q+8c594IkN6m7zvUBYhRoMDzmbqi9v/LNeUDThPao50c3TWPBU00lOvNhZjZLZN6eVxtplob2+wHxDPU7QUl+xBEiGbG7dC4z1KdrAQbVEOVlDaHeH2LzSV9TAj3ki7UKkybMLN+jBvmnPR3+t+1ZUFtRUxRkHEvVz9tr6uOwjbfT21uZ8X5uWS64KwaXQ5+fA/0f+dmLuOYzzaSDm9jd5uMUIYx0gRRBeUSGSaEHc7MHb4mfUCeC8kIdzBmSaH0aKpj5jaoi8A+Ru0qdBM2EfZs1R1goLzmmA5u0+IXFS+YfIyHrECbq0eXTD4IYCMQvVs35Y9an6iOo2mTzofRTjXa2hPA+hiv5WIijIEjtYezE5yF4sZGULfrZWOPErh/PaDpFUcfd4tSsriGt31e6xZKb6SZg0p2mpO1V2zXwtJlYa7Vgc8xXuTWAPshBs21ph+3OBLrrHMEfk4cs4/ADP+Rw15JrlWogVl2PjyUckg6cZOT9FRG+K2tTZPcgX3uJ+eEO3iqleT4rh63DGQLTyr45x1UsEQdtD6C8GoOWenl9ZYvGsq5vPUuEKTY4A67UYxIm4rCBwUWRRg7aid+yHlBUgFJjrWQ=" --overwrite --region ap-southeast-1

awslocal ssm put-parameter --name "/dev/capp/cps/cert/pass" --type String --value "changeit" --overwrite --region ap-southeast-1
awslocal ssm put-parameter --name "/dev/capp/cps/tep/aesKey" --type String --value "vMIplQ4zYNhLRbnZnqhsrA==" --overwrite --region ap-southeast-1

awslocal ssm put-parameter --name "/dev/capp/app/publicKey" --type String --value "-----BEGIN PUBLIC KEY-----MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAm6ZOuN/8PJ1Mc3pTfpWkZJNbkqUMPs+vIJPEmjd7noveVLPP179bbwlljRnKarepdl9UpV/FoZGWzGK1IAQb5bHBVAUG+9sCRakqTplM6/aIpnoeUvEfao68nQtKYH1XVKiO1PwgpTq+Y5PgikWt98s2nVrRa/eFePwXCfNGXGZylcP1ktH6CctXRApTTyxPtqMCN3nrrvxFEa92O6aH9opgzktAHHYVEcFgjWgbud3IcN1JhbZTB9aNHMeoC33no7C0qnnrloUdVFAc5IHYjk7UpxznQ6Ig+zAJVjSdZTpgGFqYXyeWLHTeDAnarQGK1Es5rbw7VEGK0618MLB3AzPf0gnaajUCHXCUg3FvOnhiMaZfHldp/zMz7RPGeSVGSrWZq8vpt0KdWl0veon46AR0DFON9uBe4rKzht8DNQx3tR3Q8QpO93iLHzxAZ1rqU6WXVy4lQamVnXB7FRz04XC7tt+vK5ZfwgViRiSzqkET2aa7wfC148bW/CdseGVEhdkIx7Gejpo2jZwGeFj5V8lVZ6uuAG8/87mUoD2AtVEAnr1ehy9/XxEeeTDY5ThCfA5Uo7kSfy4sfqvbEJItS0f7+Lsx9GjUqDTNHP/hocggeL0F5YTBAMJKga+d5A+TCDTmODWaUEqDu5fgJVNkeCdCgQCeOpYrnaASS4U4O8sCAwEAAQ==-----END PUBLIC KEY-----" --overwrite --region ap-southeast-1
awslocal ssm put-parameter --name "/dev/capp/app/privateKey" --type String --value "-----BEGIN PRIVATE KEY-----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-----END PRIVATE KEY-----" --overwrite --region ap-southeast-1
awslocal ssm put-parameter --name "/dev/capp/cps/publicKey" --type String --value "-----BEGIN PUBLIC KEY-----MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAj3DBwalNU6LXPmM2DfGGLQ51fPEoh6m1zkoDgxWx/kN4xYdXhMOODc82Wfxf+37SH9Z2OZCXscvxxVyZPmryGhbmYLu1x0LXDWIAzkMRBULgXQ/A5paI0pZKUeWnpXNXbnA6I/PjTbAKbpsLm/CunMzb8UEYANNM2PP4RApDgKppwDvT903qURUVwfqk0HCBVIng0nTdCPcmDrdCkePItZhAXpZWysK53Jm31GwaQBXFlw7uBUYIXVLU1QCrAzaHW2in+WHAennGooNJPnku0VUr49O4GxsQV0yGdoVZzKaM2dcIzrkAUz6A9vscPhfTsO3jLve3WfmmyqTAxwXllICCkcPPjnQ4uhJX4adJouah0Y46qeRSfg9c50oeyq6qVa4GGNBeEF3zAusyJXdn7VwNLxjVHuy8Yf4kLbtddAR8RpomLTWm3FNVTCjakhA5qDUeUQ150nTZaswa41XaheZZg4y5B9RAXj9GRk0ooWr2nziXqR/Y5TI98/+BXNLhfFD/1aIuJRT3QPiRPDU5+Fyp6tSx5cqYPKcVgt1qfZ0dJarkq3kTdILgMJUcG+YuhVPNET4ukdp20uwQQv8+8Mt6/uYxrl8GrpOoGOMpIVumrZ8pEWZy/hMYnFJBhjYW4Ti4gtxpez9A3aNFPxRmXSWIwqgGSRc02xrpdmrFRO0CAwEAAQ==-----END PUBLIC KEY-----" --overwrite --region ap-southeast-1
awslocal ssm put-parameter --name "/dev/capp/token/publicKey" --type String --value "-----BEGIN PUBLIC KEY-----MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAps8lE2s6P6PZoTwT/nKs+QvvYOasr8LpgsHQdk4ghYE/vQKjEB9n5lxzHzmaIoxJcoiGU+QZuEB6MP9rovd4gIwKoQAfpEbdoondBXro2RzNzu+vQbmwTs5zr2pw5oXVYGfW8lt+d2sh5kkaGEoAk0bRe1vBlnbVbd/02QNncRsUhHtaTONhVGuU5vBJ/W38ub4beD9mP/rgZosSi+1qR7u5HmWcbwKD+tc59ZdRIfuDofTPjZMQak5VRHiWsLpyqV45ccq67MFqfCKLAXyRt0SDztwALdwXhhhRU+jenAtm+6jP8Jsf/wTmH7Zf7jf5kjNC4jbEzVuz82uZX8VmAE8B1I7bQkUJCjnmwnfyglbVEuoG9n4QGEjqvx1XgKtJ19rYwjqGfDhIri8rrvx1gc1WxzfLSE1RfbHQDv3hK1L/bdacI2HrvTaK0sgf8go5gS8pKutbusLpshpW5ki/sEq4QfMJ/AqMLOlZfEKukUWs+ISlw+0j9MwNIwSseJuZCiyenGTwZrlniDJMMFVpHXLa6wjxAshdh4BQ+Ksdfj95GYf7WjtibxVfHRWMlWOM4skAZ2VKBzxVNf6f5G/XSroTojGQnXPJMkk+YaWSZxkQTDfAm7XuzM7dPLxZwcM++HPprGApe4UWKuyZD/KxIFfT9edwqRPo4wG0C4JUZxECAwEAAQ==-----END PUBLIC KEY-----" --overwrite --region ap-southeast-1
awslocal ssm put-parameter --name "/dev/capp/token/privateKey" --type String --value "-----BEGIN PRIVATE KEY-----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-----END PRIVATE KEY-----" --overwrite --region ap-southeast-1

awslocal ssm put-parameter --name "/dev/capp/token/aes/key" --type String --value "u+AAY7wwNO8SdkH4w2bDQg==" --overwrite --region ap-southeast-1

awslocal ssm put-parameter --name "/dev/capp/token/aes/algorithm" --type String --value "AES/ECB/PKCS5Padding" --overwrite --region ap-southeast-1
awslocal ssm put-parameter --name "/dev/bkash2bank/standardmw/cps/addmoney/InitiatorIdentifierId/SBL" --type String --value "Sonali_OP" --overwrite --region ap-southeast-1
awslocal ssm put-parameter --name "/dev/bkash2bank/standardmw/cps/addmoney/InitiatorIdentifierPassword/SBL" --type String --value "N8qSi144fVqPN3JZwXyYskVe01jkrR+Rm2kt3wFsBRhCxZDjlFprOLC3yYjYlXO6yQdcyFCTD0HIEa3lnXVrFfdMJYurgZb+V5zxxGn9WvxJYg8DXfLPECqeIeqv5hMDmTN78UCaJH80INu0NjmTMZAEQ2Cucj+OjPK3Tl+ORLXCsk4OMjuhXRQxcPenn/1VlFYdUy6B3DWSMCisZHlZQjKF1/dpVPazWEtRgtfGZi/tBopMpjQSe68D2c+t3pWkm4SUevQFa+DxTA06wAcFWRqGRgv4YoaHv0vmxZP3u1KbaQBpoqmrVi6g8swVbbypYC+X+owqGNJvPnM4zp241OSMRcX431befNDZ7acBV+NugDEFY5d3jRVSTbvZVZKZW88A/VLyJSFeMaOGLWRp6OKLO5g75OTQuGRsrwBDU3VxPNr+vOyewJMex2tQLM7VFm3qoZ2Fg63vhIVEon3o1x34Xn9/h1PII0r5sXIdaoivVFLeHm/LsKGV08kE40UY16VhBHrfDjAc3r3qRqFjCBr5JhT2YRJIe8DDDoS6Ny5rQvOxc+eb6uWZAY1mEVS41uCWmBds98dulMvzf+PgCobN5RmamxOFM3NwEVjA79qmuDFDq6zOhiQ39jmpMwFLDcyCjJvGo+EHxa3h7I/Xh9sx4HMijIotiqI0uNznvLM=" --overwrite --region ap-southeast-1


echo "--------------- COMPLETE SETTING SSM PARAMETER -----------------"

while ! awslocal dynamodb list-tables --region ap-southeast-1;
do
 echo "----------------- WAITING FOR DYNAMODB SERVICE --------------------"
 sleep 0.1 # wait for 1/10 of the second before check again
done


echo "----------------- START CREATING TABLE -----------------"


awslocal dynamodb  create-table \
    --table-name dev-bkash2bank-account \
    --attribute-definitions AttributeName=walletNo,AttributeType=S AttributeName=accountHash,AttributeType=S \
    --key-schema AttributeName=walletNo,KeyType=HASH AttributeName=accountHash,KeyType=RANGE \
    --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1 \
    --region ap-southeast-1

awslocal dynamodb  update-table \
    --table-name dev-bkash2bank-account \
    --global-secondary-index-updates \
    --attribute-definitions AttributeName=accountNo,AttributeType=S \
    --global-secondary-index-updates \
    "[{\"Create\":{\"IndexName\": \"AccountNoIndex\",\"KeySchema\":[{\"AttributeName\":\"accountNo\",\"KeyType\":\"HASH\"}], \
    \"ProvisionedThroughput\": {\"ReadCapacityUnits\": 10, \"WriteCapacityUnits\": 5 },\"Projection\":{\"ProjectionType\":\"ALL\"}}}]" \
    --region ap-southeast-1

awslocal dynamodb  create-table \
    --table-name dev-bkash2bank-bank \
    --attribute-definitions AttributeName=bankCode,AttributeType=S \
    --key-schema AttributeName=bankCode,KeyType=HASH  \
    --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1  --region ap-southeast-1

awslocal dynamodb  create-table \
    --table-name dev-bkash2bank-addmoney \
    --attribute-definitions AttributeName=mwMsgID,AttributeType=S AttributeName=walletNo,AttributeType=S \
    --key-schema AttributeName=mwMsgID,KeyType=HASH  \
    --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1 \
    --global-secondary-indexes IndexName=indexWalletNo,KeySchema=["{AttributeName=walletNo,KeyType=HASH}"],Projection="{ProjectionType=ALL}",ProvisionedThroughput="{ReadCapacityUnits=1,WriteCapacityUnits=1}" \
    --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1  --region ap-southeast-1

awslocal dynamodb  update-table \
    --table-name dev-bkash2bank-addmoney \
    --global-secondary-index-updates \
    --attribute-definitions AttributeName=transactionStatus,AttributeType=S AttributeName=createdDateTime,AttributeType=N \
    --global-secondary-index-updates \
    "[{\"Create\":{\"IndexName\": \"addmoney-status\",\"KeySchema\":[{\"AttributeName\":\"bankCodeAndStatus\",\"KeyType\":\"HASH\"}, {\"AttributeName\":\"createdDateTime\",\"KeyType\":\"RANGE\"}], \
    \"ProvisionedThroughput\": {\"ReadCapacityUnits\": 10, \"WriteCapacityUnits\": 5 },\"Projection\":{\"ProjectionType\":\"ALL\"}}}]" \
    --region ap-southeast-1

awslocal dynamodb  create-table \
    --table-name dev-bkash2bank-transfer \
    --attribute-definitions AttributeName=conversationID,AttributeType=S AttributeName=walletNo,AttributeType=S \
    --key-schema AttributeName=conversationID,KeyType=HASH \
    --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1 \
    --global-secondary-indexes IndexName=indexWalletNo,KeySchema=["{AttributeName=walletNo,KeyType=HASH}"],Projection="{ProjectionType=ALL}",ProvisionedThroughput="{ReadCapacityUnits=1,WriteCapacityUnits=1}" \
    --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1  --region ap-southeast-1

awslocal dynamodb  update-table \
    --table-name dev-bkash2bank-transfer \
    --global-secondary-index-updates \
    --attribute-definitions AttributeName=bankCodeAndStatus,AttributeType=S AttributeName=createdDateTime,AttributeType=N \
    --global-secondary-index-updates \
    "[{\"Create\":{\"IndexName\": \"transaction-status\",\"KeySchema\":[{\"AttributeName\":\"bankCodeAndStatus\",\"KeyType\":\"HASH\"}, {\"AttributeName\":\"createdDateTime\",\"KeyType\":\"RANGE\"}], \
    \"ProvisionedThroughput\": {\"ReadCapacityUnits\": 10, \"WriteCapacityUnits\": 5 },\"Projection\":{\"ProjectionType\":\"ALL\"}}}]" \
    --region ap-southeast-1

awslocal dynamodb  create-table \
    --table-name dev-bkash2bank-bank-config \
    --attribute-definitions AttributeName=bankCode,AttributeType=S \
    --key-schema AttributeName=bankCode,KeyType=HASH  \
    --provisioned-throughput ReadCapacityUnits=1,WriteCapacityUnits=1  --region ap-southeast-1


echo "----------------- COMPLETE CREATING TABLE -----------------"



echo "----------------- START CREATING S3 BUCKET -----------------"

awslocal  s3api create-bucket --bucket dev-standard-bank-mw --region ap-southeast-1

# Grant bucket public read
awslocal  s3api put-bucket-acl --bucket dev-standard-bank-mw --acl public-read --region ap-southeast-1

# Create a folder inside the bucket
awslocal  s3api put-object --bucket dev-standard-bank-mw --key "sbl/" --region ap-southeast-1
awslocal  s3api put-object --bucket dev-standard-bank-mw --key "ific/" --region ap-southeast-1
awslocal  s3api put-object --bucket dev-standard-bank-mw --key "dbl/" --region ap-southeast-1
awslocal  s3api put-object --bucket dev-standard-bank-mw --key "cbbl/" --region ap-southeast-1
awslocal  s3api put-object --bucket dev-standard-bank-mw --key "ebl/" --region ap-southeast-1

awslocal  s3 sync /sbl "s3://dev-standard-bank-mw/sbl" --cli-connect-timeout 0
awslocal  s3 sync /ific "s3://dev-standard-bank-mw/ific" --cli-connect-timeout 0
awslocal  s3 sync /dbl "s3://dev-standard-bank-mw/dbl" --cli-connect-timeout 0
awslocal  s3 sync /cbbl "s3://dev-standard-bank-mw/cbbl" --cli-connect-timeout 0
awslocal  s3 sync /ebl "s3://dev-standard-bank-mw/ebl" --cli-connect-timeout 0

# Display bucket content
awslocal  s3 ls "s3://dev-standard-bank-mw/sbl"
awslocal  s3 ls "s3://dev-standard-bank-mw/ific"
awslocal  s3 ls "s3://dev-standard-bank-mw/dbl"
awslocal  s3 ls "s3://dev-standard-bank-mw/cbbl"
awslocal  s3 ls "s3://dev-standard-bank-mw/ebl"
echo "----------------- COMPLETE SETTING S3 BUCKET -----------------"



# eu-west-2
# us-east-1
# ap-southeast-1