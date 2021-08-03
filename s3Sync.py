import os
from dockerUtilities import get_value

command = "s3cmd sync /upload/ " + get_value("s3bucket") + " --skip-existing -r " +\
"--no-check-md5 -v --progress --dry-run"
result = os.system(command)