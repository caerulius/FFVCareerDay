import ips
import boto3
from io import BytesIO

BUCKET_NAME = 'bigbridgecareerday'
RPGE_PATCH = 'vanilla/rpge.ips'
VANILLA_ROM = 'vanilla/ff5-j.smc'

result = ips.applyPatch("ff5-j.smc", "rpge.ips", BytesIO())
print(result.readline())

def lambda_handler(event, context):
    client = boto3.client('s3')

    patch = client.get_object(Bucket=BUCKET_NAME, Key=RPGE_PATCH)['Body'].read()
    vanilla = client.get_object(Bucket=BUCKET_NAME, Key=VANILLA_ROM)['Body'].read()

#    patched
    
