#!/bin/bash
awk 'NR==1{print tolower($0)}' data.csv > list.csv

sed -zi 's/ /_/g; s/_\///g' list.csv
list=$(cat list.csv)
echo $list

sed -i "1s/.*/$list/" data.csv