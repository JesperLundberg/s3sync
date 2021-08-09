import os

def get_environment_value(variable_name):
    return os.getenv(variable_name)

command = "s3cmd sync /upload/ " + get_environment_value("S3BUCKET") + " --skip-existing -r " +\
"--no-check-md5 -v --progress"

uploadLimit = get_environment_value("UPLOAD_LIMIT")

if(uploadLimit):
    command = command + " --limit-rate " + uploadLimit

result = os.system(command)