#!/usr/bin/python3

import os
import subprocess
import dockerUtilities

def build_docker():
    print("Building docker file")
    command = "docker build -t " + dockerUtilities.get_value("name") + ":" +\
    dockerUtilities.get_value("release") + " ."
    os.system(command)

# Actual script

build_docker()