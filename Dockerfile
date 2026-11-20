FROM alpine:latest

RUN apk add --no-cache s3cmd

COPY /publish/.s3cfg /root/
COPY /publish/s3sync.sh /s3sync.sh

ENTRYPOINT ["sh", "/s3sync.sh"]
