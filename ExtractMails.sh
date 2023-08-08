#!/bin/bash

folder_path="/YOUR/PATH/TO/FILES/"
output_file="extractmails.txt"

rm -f "$output_file"

for file in "$folder_path"/*.txt
do
    awk '/^u:/ {print substr($0, 4)}' "$file" >> "$output_file"
    awk '!seen[$0]++' "$output_file" > "$output_file.tmp" && mv "$output_file.tmp" "$output_file"
    sed -i '/@/!d' "$output_file"
done
