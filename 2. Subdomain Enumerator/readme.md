
### Description
A bash script that uses two tools, sublist3r and assetfinder, to enumerate subdomains of a given domain. The script first checks if the number of arguments passed to the script is equal to 1, and if not, it displays the usage instructions and exits.

If the number of arguments is correct, the script calls the sublist3r_enum function, which uses sublist3r to enumerate the subdomains and saves the results to a file named sublist3r_output.txt. Then, it calls the assetfinder_enum function, which uses assetfinder to enumerate the subdomains and saves the results to a file named assetfinder_output.txt.

Finally, the script calls the combine_results function, which combines the results from both tools and removes duplicates using the sort -u command. The script then saves the combined results to a file named subdomains.txt and displays a message indicating that the subdomain enumeration is complete.

### HOW TO USE


Save this script to a file, `subdomain_enumerator.sh`, and make it executable:

```
chmod +x subdomain_enumerator.sh
```
You can then run the script by providing the target domain:
```
./subdomain_enumerator.sh example.com
``` 

This script uses `sublist3r` and `assetfinder` to enumerate subdomains and combines the results into a file named `subdomains.txt`. Keep in mind that this is a basic example, and there are more advanced tools available for subdomain enumeration, such as `amass` or `subfinder`. Always ensure you have proper authorization before enumerating subdomains on any domain.