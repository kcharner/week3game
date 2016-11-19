#!/usr/bin/env bash

# Simple script to save changes of a github repository

# Script utlizes default conditions

# invoke with bash gitsave.sh from terminalclear

echo

echo This script is used to ADD COMMIT and PUSH file changes to GitHub!

echo

echo This script uses default parameters

echo Verify the parameters before proceeding

echo

echo

echo The current directory is:

pwd

echo

echo "Is this the correct Directory?, Press 1 for "YES" 2 for "NO""

echo

# Verify correct directory

OPTIONS="YES NO"

select opt in $OPTIONS; do

if [ "$opt" = "YES" ]; then

clear

echo Moving On...

break

elif [ "$opt" = "NO" ]; then

echo Exiting, Use CD to move to correct directory

exit

else

echo Invald selection

echo

echo Press 1 for "YES" 2 for "NO", still stuck? close terminal

fi

done

# Verifying add commit and push parameters

echo The script will proceed under these conditions:

echo

echo "1) Adding all files (git add .)"

echo "2) Apply one commit message  (git commit - m 'YOUR_MESSAGE_HERE')"

echo "3) Push all file to origin master branch (git push origin master)"

echo

echo Do you accept these parameters, Press 1 for "YES" 2 for "NO"

echo

OPTIONS="YES NO"

select opt in $OPTIONS; do

if [ "$opt" = "YES" ]; then

clear

echo Moving On...

break

elif [ "$opt" = "NO" ]; then

echo Exiting, make changes manually

exit

else

echo Invald selection

echo

echo Press 1 for "YES" 2 for "NO", still stuck? close terminal

fi

done

# Validating SSH connection to git hub

echo Testing connection to github

echo

ssh -T git@github.com

echo

echo Was SSH aunthentication successful?

echo "    ...(Github does not provide shell access)"

echo

echo Press 1 for "YES" 2 for "NO"

echo

# Verify Was authentication successful?

OPTIONS="YES NO"

select opt in $OPTIONS; do

if [ "$opt" = "YES" ]; then

clear

echo Moving On...

break

elif [ "$opt" = "NO" ]; then

echo Exiting, check internet connection, ssh keys, and username and password

exit

else

echo Invald selection

echo

echo Press 1 for "YES" 2 for "NO", still stuck? close terminal

fi

done

clear

sleep 1s

echo View Git Status

echo

echo

echo

git status

sleep 1s

echo

echo Adding all files to Git

git add .

sleep 1s

echo

echo

clear

echo "Enter the message to be applied to pending commit (git commit -m 'YOUR_MESSAGE_HERE'"

read MESSAGE

git commit -m "$MESSAGE"

sleep 1s

echo Pushing commits to Git hub

git push origin master

echo

echo

# Remove scripting from github online repository

echo cleaning up

git rm --cached gitsave.sh

git commit -m 'remove gitsave.sh'

git push origin master

heroku

sleep 5

heroku create

sleep 5


git remote -v

git push heroku master

echo Finished

echo Closing



