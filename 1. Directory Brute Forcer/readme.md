# This is the instruction

### A part of a bash script that is used to brute force directories on a web server. The script takes two arguments: the target URL and the location of the wordlist file. The script checks if the wordlist file exists, and if not, it will exit with an error.

#### The script then uses a while loop to read each line in the wordlist file. It constructs a URL by appending the current directory name to the target URL, and makes a request to the URL using curl. The response code is extracted using curl's -w option, and if the response code is 200 (OK), the script will print "Found: 



Save this script to a file, for example, ` dir_brute.sh ` . Make it executable using the command ` chmod +x dir_brute.sh ` . Then you can run it by providing the target URL and the wordlist as arguments:

```
./dir_brute.sh http://example.com /path/to/wordlist.txt
```
Replace ` http://example.com ` with the target URL and ` /path/to/wordlist.txt ` with the path to your wordlist file.
