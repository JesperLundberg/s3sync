#!/bin/sh
set -eu

: "${S3BUCKET:?S3BUCKET must be set}"

if [ -n "${UPLOAD_LIMIT:-}" ]; then
    exec s3cmd sync /upload/ "$S3BUCKET" --skip-existing -r --no-check-md5 -v --progress --limit-rate "$UPLOAD_LIMIT"
fi

exec s3cmd sync /upload/ "$S3BUCKET" --skip-existing -r --no-check-md5 -v --progress
