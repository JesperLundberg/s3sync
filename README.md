# s3sync

Small container for uploading files to an s3 bucket using s3cmd (https://s3tools.org/s3cmd).

# Usage

Get the settings and private keys and set them in .s3cfg and make sure python is installed.

Change the mount file to reflect the folder where the files to be uploaded are and set the S3BUCKET in env-file to the s3bucket to upload to.

Then run the python scripts `buildDocker.py` and `runDocker.py` and it automatically uploads all files locally that does not exist in the bucket.

OR

Use docker-compose by changing the volume and the bucket name and then running `docker-compose up -d`.

# Requirements

- Python 3
- Docker
