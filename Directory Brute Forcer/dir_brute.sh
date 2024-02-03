#!/bin/bash

# Simple Directory Brute Forcer

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <target_url> <wordlist>"
    exit 1
fi

target_url=$1
wordlist=$2

if [ ! -f "$wordlist" ]; then
    echo "Wordlist not found: $wordlist"
    exit 1
fi

while read -r directory; do
    url="$target_url/$directory"
    response_code=$(curl -s -o /dev/null -w "%{http_code}" "$url")

    if [ "$response_code" -eq 200 ]; then
        echo "Found: $url (HTTP 200)"
    elif [ "$response_code" -eq 403 ]; then
        echo "Forbidden: $url (HTTP 403)"
    fi

done < "$wordlist"
