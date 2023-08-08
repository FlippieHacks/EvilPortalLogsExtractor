# This script helps you extract user logs from log.txt files generated with the Evil Portal app on the Flipper zero.
## You only need to change the path to the folder holding your log.txt files on your computer. You can do that in the three .sh files.

# DISCLAIMER: This is for educational purposes only. Not to be used on unaware victims. You could be arrested for it, that's a crime.

# Looking for portals to play with? Have a look at [my repo of various portals](https://github.com/FlippieHacks/FlipperZeroEuropeanPortals/tree/main).
# Want to make a custom portal to impress your friends? Try [this script](https://github.com/FlippieHacks/EvilPortalGenerator) for a quick creation of your portal

## To run the scripts, you must have Git Bash installed. 
Before first use, access the **directory** holding the *.sh files* (can be the same or different as the one holding the log.txt files). 

Basically, in **Git Bash** when you have the files downloaded, **do this**:

cd "PATH/TO/YOUR/FOLDER"

chmod -x "Extract.sh"

chmod -x "ExtractPasswords.sh"

chmod -x "ExtractMails.sh"

You can now **run** the scripts by using the **command** "./Extract.sh", "./ExtractPasswords.sh" or "./ExtractMails.sh"
Or just by **double-clicking** the .sh files in the folder you put them.
DON'T forget to **change the folder path** in each one of them. It needs to lead to the folder where you have your log.txt file(s)


1. *Extract.sh* : will extract **username and password**
2. *ExtractPasswords.sh* : will extract **only passwords** and **delete duplicates**
3. *ExtractMails.sh* : will extract **only the usernames**, **delete duplicates** and **delete inputs that are not emails**

Extracts appear in the **same folder** you put the *.sh files* in. Don't forget to **move them in another folder before extracting new data**. They would, otherwise, be overwritten.

## Happy Flippin'
