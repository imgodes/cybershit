#!/bin/bash
grep -E "href\=\"" index.html | cut -d "/" -f3 | cut -d "\"" -f1 | grep -E "\." > lista.txt
for url in $(cat lista.txt); do
        host $url 
done
