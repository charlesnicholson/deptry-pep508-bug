import platform

if platform.system() != "Windows":
    raise ValueError("unsupported platform")

import boto3

def s3_resource():
    return boto3.resource("s3")
