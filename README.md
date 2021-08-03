# s3sync

Small container for uploading files to an s3 bucket using s3cmd (https://s3tools.org/s3cmd).

# Usage

Get the settings and private keys and set them in .s3cfg and make sure python is installed.

Then run the python scripts `buildDocker.py` and `runDocker.py` and it automatically uploads all files locally that does not exist in the bucket.

# Requirements

- Python 3
- Docker
