# ChromePassword2Safari

AppleScript that will read a CSV file containing URL, username and password data and import this to iCloud KeyChain via Safari.

## CSV Layout
By default Chrome will export CSV file with the following format

>name,url,username,password

But in KeyChain we just need 3

>url,username,password

So we need to re-format csv with following code

>FormatCSV.py csvfilename.csv

This will create new FormatCSV.csv file. ***Use it***

## Give Accessibility Permissions First
Script editor must be given permission under System Preferences - Security & Privacy - Accessibility to run. Ensure you remove this after you have finished running the script.

***Make sure the new CSV format always has 3 attributes***

***DONT***
>woof.org,,secretbonepass
>woof.org,doggo,
>.org,doggo,secretbonepass

### Tested on MacOS 11.2 Bigsur with Safari 14.0.3