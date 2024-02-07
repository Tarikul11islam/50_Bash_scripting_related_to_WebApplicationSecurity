#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

domain="$1"

# Use sublist3r to enumerate subdomains
sublist3r_enum() {
    echo "Enumerating subdomains using sublist3r..."
    sublist3r -d "$domain" -o sublist3r_output.txt
}

# Use assetfinder to enumerate subdomains
assetfinder_enum() {
    echo "Enumerating subdomains using assetfinder..."
    assetfinder "$domain" > assetfinder_output.txt
}

# Combine and deduplicate results
combine_results() {
    echo "Combining and deduplicating results..."
    cat sublist3r_output.txt assetfinder_output.txt | sort -u > subdomains.txt
    rm sublist3r_output.txt assetfinder_output.txt
}

sublist3r_enum
assetfinder_enum
combine_results

echo "Subdomain enumeration completed. Results saved to subdomains.txt"
