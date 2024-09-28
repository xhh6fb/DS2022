#!/bin/bash

# Upload the file
aws s3 cp ~/go_hoos.jpg s3://ds2022-xhh6fb/

# Presign the URL for 7 days (604800 seconds)
aws s3 presign --expires-in 604800 s3://ds2022-xhh6fb/go_hoos.jpg

# presigned URL: https://ds2022-xhh6fb.s3.us-east-1.amazonaws.com/go_hoos.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAYXWBNZNTNQBPQHH6%2F20240928%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240928T044027Z&X-Amz-Expires=604800&X-Amz-SignedHeaders=host&X-Amz-Signature=70e52f73114cfa4b4090d7a9713a1a0809ce5f8c22c5a01002d83da35f171982
