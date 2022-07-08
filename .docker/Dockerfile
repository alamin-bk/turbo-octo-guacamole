FROM alpine:3.12.0

# Install prepare infrastructure
RUN apk update
RUN apk add wget
RUN apk add tar
RUN apk add py-pip
#RUN apk add --no-cache --upgrade bash
RUN pip install awscli
RUN pip install awscli-local

# Only for windows
RUN apk add dos2unix --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community/ --allow-untrusted

# Prepare environment
ENV AWS_ACCESS_KEY_ID 'non_empty_key'
ENV AWS_SECRET_KEY 'non_empty_key'
ENV AWS_SECRET_ACCESS_KEY 'non_empty_key'
ENV AWS_REGION 'ap-southeast-1'

RUN mkdir /scripts/
RUN mkdir /sbl/
RUN mkdir /ific/
RUN mkdir /dbl/
RUN mkdir /cbbl/
RUN mkdir /ebl/

COPY scripts.sh /scripts/
COPY insert-ssm.sh /scripts/
COPY ssm-values.txt /scripts/

#RUN mkdir /s3data/sbl/
COPY s3-data/sbl/keystore.jks /sbl/
COPY s3-data/sbl/sbl_public_key.cer /sbl/
COPY s3-data/ific/keystore.jks /ific/
COPY s3-data/ific/ific_public_key.cer /ific/
COPY s3-data/dbl/keystore.jks /dbl/
COPY s3-data/dbl/dbl_public_key.cer /dbl/
COPY s3-data/cbbl/keystore.jks /cbbl/
COPY s3-data/cbbl/cbbl_public_key.cer /cbbl/
COPY s3-data/ebl/keystore.jks /ebl/
COPY s3-data/ebl/ebl_public_key.cer /ebl/
# Only for windows
RUN dos2unix /scripts/scripts.sh
RUN dos2unix /scripts/insert-ssm.sh

#RUN chmod +x /scripts/scripts.sh
#RUN chmod +x /scripts/insert-ssm.sh

