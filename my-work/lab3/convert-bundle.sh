#!/bin/bash

curl -O https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz

tar -xzvf lab3-bundle.tar.gz

awk '!/^[[:space:]]*$/' lab3_data.tsv > cleaned.tsv

sed 's/\t/,/g' cleaned.tsv > converted.csv

line_count=$(tail -n +2 converted.csv | wc -l)
echo "Lines remaining in the data file: $line_count"

tar -czvf converted-archive.tar.gz converted.csv
