#!/bin/sh

while ! awslocal ssm describe-parameters --output table --region ap-southeast-1;
do
 echo "----------------- WAITING FOR SSM SERVICE -----------------"
 sleep 0.1 # wait for 1/10 of the second before check again
done


echo "--------------- START SETTING SSM PARAMETER ---------------"

awslocal ssm put-parameter --name "/dev/visa/redis/authtoken" --type String --value "FiXWVSsPAJmA1y4c6E63pc9p4YgM4m0lJzTVeRZD0hyJTiYPqZD5YkToDxBHX9N2APQqhnqVXYNipIkErKByFD9Gx38rbF5vE80z28u2v9NGD9vZz6GtgnElS1yqAfMk" --overwrite  --region ap-southeast-1
awslocal ssm put-parameter --name "/dev/visa/keystore/password" --type String --value "test" --overwrite  --region ap-southeast-1
awslocal ssm put-parameter --name "/dev/visa/user/id" --type String --value "AEM1QDMSKN68PWEMUNUF21kThPDmZmiHdwIXpbsGPX3hAczPU" --overwrite  --region ap-southeast-1
#awslocal ssm put-parameter --name "/dev/visa/user/id" --type String --value "6J20GM986IT6ISE2Y4JJ21xitXemf_RbnF4HRrrcrqupJuiG8" --overwrite  --region ap-southeast-1
awslocal ssm put-parameter --name "/dev/visa/password" --type String --value "l8UIl6n1P0r28A" --overwrite  --region ap-southeast-1
#awslocal ssm put-parameter --name "/dev/visa/password" --type String --value "EuUL7Of7Wfg" --overwrite  --region ap-southeast-1
awslocal ssm put-parameter --name "/dev/visa/app/private/key" --type String --value "-----BEGIN PRIVATE KEY-----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-----END PRIVATE KEY-----" --overwrite  --region ap-southeast-1
awslocal ssm put-parameter --name "/dev/visa/app/public/key" --type String --value "-----BEGIN PUBLIC KEY-----\nMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAm6ZOuN/8PJ1Mc3pTfpWkZJNbkqUMPs+vIJPEmjd7noveVLPP179bbwlljRnKarepdl9UpV/FoZGWzGK1IAQb5bHBVAUG+9sCRakqTplM6/aIpnoeUvEfao68nQtKYH1XVKiO1PwgpTq+Y5PgikWt98s2nVrRa/eFePwXCfNGXGZylcP1ktH6CctXRApTTyxPtqMCN3nrrvxFEa92O6aH9opgzktAHHYVEcFgjWgbud3IcN1JhbZTB9aNHMeoC33no7C0qnnrloUdVFAc5IHYjk7UpxznQ6Ig+zAJVjSdZTpgGFqYXyeWLHTeDAnarQGK1Es5rbw7VEGK0618MLB3AzPf0gnaajUCHXCUg3FvOnhiMaZfHldp/zMz7RPGeSVGSrWZq8vpt0KdWl0veon46AR0DFON9uBe4rKzht8DNQx3tR3Q8QpO93iLHzxAZ1rqU6WXVy4lQamVnXB7FRz04XC7tt+vK5ZfwgViRiSzqkET2aa7wfC148bW/CdseGVEhdkIx7Gejpo2jZwGeFj5V8lVZ6uuAG8/87mUoD2AtVEAnr1ehy9/XxEeeTDY5ThCfA5Uo7kSfy4sfqvbEJItS0f7+Lsx9GjUqDTNHP/hocggeL0F5YTBAMJKga+d5A+TCDTmODWaUEqDu5fgJVNkeCdCgQCeOpYrnaASS4U4O8sCAwEAAQ==\n-----END PUBLIC KEY-----" --overwrite  --region ap-southeast-1
awslocal ssm put-parameter --name "/dev/visa/cps/public/key" --type String --value "MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAj3DBwalNU6LXPmM2DfGGLQ51fPEoh6m1zkoDgxWx/kN4xYdXhMOODc82Wfxf+37SH9Z2OZCXscvxxVyZPmryGhbmYLu1x0LXDWIAzkMRBULgXQ/A5paI0pZKUeWnpXNXbnA6I/PjTbAKbpsLm/CunMzb8UEYANNM2PP4RApDgKppwDvT903qURUVwfqk0HCBVIng0nTdCPcmDrdCkePItZhAXpZWysK53Jm31GwaQBXFlw7uBUYIXVLU1QCrAzaHW2in+WHAennGooNJPnku0VUr49O4GxsQV0yGdoVZzKaM2dcIzrkAUz6A9vscPhfTsO3jLve3WfmmyqTAxwXllICCkcPPjnQ4uhJX4adJouah0Y46qeRSfg9c50oeyq6qVa4GGNBeEF3zAusyJXdn7VwNLxjVHuy8Yf4kLbtddAR8RpomLTWm3FNVTCjakhA5qDUeUQ150nTZaswa41XaheZZg4y5B9RAXj9GRk0ooWr2nziXqR/Y5TI98/+BXNLhfFD/1aIuJRT3QPiRPDU5+Fyp6tSx5cqYPKcVgt1qfZ0dJarkq3kTdILgMJUcG+YuhVPNET4ukdp20uwQQv8+8Mt6/uYxrl8GrpOoGOMpIVumrZ8pEWZy/hMYnFJBhjYW4Ti4gtxpez9A3aNFPxRmXSWIwqgGSRc02xrpdmrFRO0CAwEAAQ==" --overwrite  --region ap-southeast-1
awslocal ssm put-parameter --name "/dev/capp/token/publicKey" --type String --value "-----BEGIN PUBLIC KEY-----MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAps8lE2s6P6PZoTwT/nKs+QvvYOasr8LpgsHQdk4ghYE/vQKjEB9n5lxzHzmaIoxJcoiGU+QZuEB6MP9rovd4gIwKoQAfpEbdoondBXro2RzNzu+vQbmwTs5zr2pw5oXVYGfW8lt+d2sh5kkaGEoAk0bRe1vBlnbVbd/02QNncRsUhHtaTONhVGuU5vBJ/W38ub4beD9mP/rgZosSi+1qR7u5HmWcbwKD+tc59ZdRIfuDofTPjZMQak5VRHiWsLpyqV45ccq67MFqfCKLAXyRt0SDztwALdwXhhhRU+jenAtm+6jP8Jsf/wTmH7Zf7jf5kjNC4jbEzVuz82uZX8VmAE8B1I7bQkUJCjnmwnfyglbVEuoG9n4QGEjqvx1XgKtJ19rYwjqGfDhIri8rrvx1gc1WxzfLSE1RfbHQDv3hK1L/bdacI2HrvTaK0sgf8go5gS8pKutbusLpshpW5ki/sEq4QfMJ/AqMLOlZfEKukUWs+ISlw+0j9MwNIwSseJuZCiyenGTwZrlniDJMMFVpHXLa6wjxAshdh4BQ+Ksdfj95GYf7WjtibxVfHRWMlWOM4skAZ2VKBzxVNf6f5G/XSroTojGQnXPJMkk+YaWSZxkQTDfAm7XuzM7dPLxZwcM++HPprGApe4UWKuyZD/KxIFfT9edwqRPo4wG0C4JUZxECAwEAAQ==-----END PUBLIC KEY-----" --overwrite  --region ap-southeast-1
awslocal ssm put-parameter --name "/dev/visa/cps/caller/password" --type String --value "HwCVyouSb/bcuwdK7SIy8vo3a22kb8oeIe8PZo1yyURTRJz0IDY5OtkFlKtMR3F8yITXgfzbaItK1vc5ySCOKfqOoss3BWZXm3I9shWmjbNYP8rTmqLPqTlosenUCPZisgFltTWFsHKAGBzYWs5ALPke7cw1iAav1bb+v2n2B2/EbQg+QEOgLc8ggD+pomQqmOr4wPD4j4UHEIM6TdiFAcP+AzEqG+XqmvfqeF+wCpiW5GZ8KQtmRXH7BrMIZCLylrLZ9MLA8GY61Pnsu5/lbD4kSUXno6jOggfRAebvEOREQ29bRFcjKD8Y0O60Iadxpso5dL9jP00Nss0SMjpSi8F33PvO2Z4Ur2u9mFRuedGsY6EietdgABn0UIHi1Ne9g3HEFqRrIyWosDFB3JLYv31LaP4nAzVOpAKK2Rku1rGbqt5M20wdPkqWom7mKxwQ5R0L9uv9RNmYkr8AJpr2K216Od/Uuc900sJ08EcbRbXz1fQuuErnA0Y26KeuZQwHeVKeiRTj+lwL0f5ItIFne09yM/pzPCQd9hFR0U5TzBN1CnM6DsIXGCmtEZ2ryPbjQm65dKMVs0phGzEAukmcZaVP7N6CLBObn8ZmGQKZW+GQJfZhbFdV0qfb7hNzl733675uChiuBT2U2gXztSgGSuqBj15z2JapBIuNLWQ9Btc=" --overwrite  --region ap-southeast-1
awslocal ssm put-parameter --name "/dev/visa/cps/sp/password" --type String --value "OkGCgR7PWJIQbnHwzfSfeWr/SiU2YKe+jbElRBNvcepsASxeZ1kmYjakHV6I8sWoNI6YtdGsBm6Q+8c594IkN6m7zvUBYhRoMDzmbqi9v/LNeUDThPao50c3TWPBU00lOvNhZjZLZN6eVxtplob2+wHxDPU7QUl+xBEiGbG7dC4z1KdrAQbVEOVlDaHeH2LzSV9TAj3ki7UKkybMLN+jBvmnPR3+t+1ZUFtRUxRkHEvVz9tr6uOwjbfT21uZ8X5uWS64KwaXQ5+fA/0f+dmLuOYzzaSDm9jd5uMUIYx0gRRBeUSGSaEHc7MHb4mfUCeC8kIdzBmSaH0aKpj5jaoi8A+Ru0qdBM2EfZs1R1goLzmmA5u0+IXFS+YfIyHrECbq0eXTD4IYCMQvVs35Y9an6iOo2mTzofRTjXa2hPA+hiv5WIijIEjtYezE5yF4sZGULfrZWOPErh/PaDpFUcfd4tSsriGt31e6xZKb6SZg0p2mpO1V2zXwtJlYa7Vgc8xXuTWAPshBs21ph+3OBLrrHMEfk4cs4/ADP+Rw15JrlWogVl2PjyUckg6cZOT9FRG+K2tTZPcgX3uJ+eEO3iqleT4rh63DGQLTyr45x1UsEQdtD6C8GoOWenl9ZYvGsq5vPUuEKTY4A67UYxIm4rCBwUWRRg7aid+yHlBUgFJjrWQ=" --overwrite  --region ap-southeast-1
awslocal ssm put-parameter --name "/dev/visa/cps/keystore/password" --type String --value "changeit" --overwrite  --region ap-southeast-1
awslocal ssm put-parameter --name "/dev/visa/mle/keyid" --type String --value "b61a8cea-a897-4e46-b37a-a50a263ab161" --overwrite  --region ap-southeast-1
#awslocal ssm put-parameter --name "/dev/visa/mle/keyid" --type String --value "7d5de8cf-7709-4a09-b2f5-f59047cea38d" --overwrite  --region ap-southeast-1
#awslocal ssm put-parameter --name "/dev/visa/kms/key/store" --type String --value "ffebc45d-51c2-4f89-b09e-df93f5aea367" --overwrite  --region ap-southeast-1
awslocal ssm put-parameter --name "/dev/visa/kms/key/store" --type String --value "0fc8f6bb-232b-40ba-b6e5-4b363fddfd05" --overwrite  --region ap-southeast-1



echo "--------------- COMPLETE SETTING SSM PARAMETER -----------------"


echo "----------------- START CREATING S3 BUCKET -----------------"
awslocal  s3api create-bucket --bucket workspace --region ap-southeast-1
awslocal  s3api create-bucket --bucket dev --region ap-southeast-1

# Grant bucket public read
awslocal  s3api put-bucket-acl --bucket workspace --acl public-read --region ap-southeast-1
awslocal  s3api put-bucket-acl --bucket dev --acl public-read --region ap-southeast-1

awslocal  s3api put-object --bucket workspace --key "certificates_and_keys/" --region ap-southeast-1

awslocal s3 cp myapp_keyAndCertBundle.p12 "s3://workspace/certificates_and_keys/"
awslocal s3 cp mle_public_server_cert.pem "s3://workspace/certificates_and_keys/"
awslocal s3 cp mle_private_client_cert.pem "s3://workspace/certificates_and_keys/"
awslocal s3 cp callback.pgw.com-keystore.jks "s3://dev/"
awslocal s3 cp callback.pgw.com-truststore.jks "s3://dev/"


# Display bucket content
awslocal  s3 ls "s3://workspace/certificates_and_keys/"
awslocal  s3 ls "s3://dev/"
echo "----------------- COMPLETE SETTING S3 BUCKET -----------------"



# eu-west-2
# us-east-1
# ap-southeast-1