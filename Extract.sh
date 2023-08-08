#!/bin/bash

folder_path="/YOUR/PATH/TO/FILES/"
output_file="extract.txt"

rm -f "$output_file"

for file in "$folder_path"/*.txt
do

    awk '/^u:/ {a=substr($0, 4)} /^p:/ {print a ORS substr($0, 4) ORS "--------------------------------"}' "$file" >> "$output_file"
done

