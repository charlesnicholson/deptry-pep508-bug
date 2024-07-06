import platform

if platform.system() != "Linux":
    raise ValueError("unsupported platform")

import boto3

def s3_resource():
    return boto3.resource("s3")
