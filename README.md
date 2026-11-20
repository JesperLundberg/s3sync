# s3sync

Small container for uploading files to an s3 bucket using s3cmd (https://s3tools.org/s3cmd).

# Usage

Get the settings and private keys and set them in `publish/.s3cfg`.

Set `S3BUCKET` in the `env` file to the bucket to upload to, and set `MOUNT_PATH` (in your shell or in a `.env` file) to the folder with the files to upload. It defaults to `~/` and is mounted read-only.

Then run `docker compose up --build` (add `-d` to run in the background). All local files that do not exist in the bucket are uploaded.

Clean up with `docker compose down --rmi local`.

# Requirements

- Docker with the Compose plugin
