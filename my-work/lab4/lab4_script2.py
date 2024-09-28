import boto3
import requests

url = "https://news.virginia.edu/sites/default/files/article_image/football_tickets_header.jpg"
file_name = "gohoosgo.jpg"
bucket_name = "ds2022-xhh6fb"
object_name = "go_hoos_go.jpg"
expires_in = 604800

# Fetch and save the file from the internet
response = requests.get(url)
with open(file_name, 'wb') as file:
    file.write(response.content)

# Upload the file to S3
s3 = boto3.client('s3')
s3.upload_file(file_name, bucket_name, object_name)

# Generate a presigned URL that expires in 7 days (604800 seconds)
presigned_url = s3.generate_presigned_url(
    'get_object',
    Params={'Bucket': bucket_name, 'Key': object_name},
    ExpiresIn=expires_in
)

print("Presigned URL:", presigned_url)

# URL: https://ds2022-xhh6fb.s3.amazonaws.com/go_hoos_go.jpg?AWSAccessKeyId=AKIAYXWBNZNTNQBPQHH6&Signature=YdFqWeL0G4WVrl1zGNu%2F0gZHsAI%3D&Expires=1728106151
