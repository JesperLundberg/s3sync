FROM python:3.8.11-alpine3.14

COPY .s3cfg /root/
COPY s3Sync.py .
COPY dockerUtilities.py .

RUN pip install s3cmd

ENTRYPOINT ["python3", "s3Sync.py"]
