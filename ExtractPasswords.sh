#!/bin/bash

folder_path="/YOUR/PATH/TO/FILES/"
output_file="extractpasswords.txt"

rm -f "$output_file"

for file in "$folder_path"/*.txt
do
    awk '/^p:/ {print substr($0, 4)}' "$file" >> "$output_file"
    awk '!seen[$0]++' "$output_file" > "$output_file.tmp" && mv "$output_file.tmp" "$output_file"
done
