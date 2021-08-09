FROM python:3.9-alpine

COPY /publish/.s3cfg /root/
COPY /publish/ .

RUN pip install s3cmd

ENTRYPOINT ["python3", "s3Sync.py"]
