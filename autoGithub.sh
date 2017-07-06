#! /bin/bash

#this shell script automatically uploads commits all files in a folder to a specified github repository

cd /e/GitCode/pic

while true
do
 fc="$(ls | wc -l)"
	if [ $fc -gt 0 ];
	 then
	 FILES=/e/GitCode/pic/*
	 for f in $FILES
		 do
		 /mingw64/bin/git add $f
		 /mingw64/bin/git commit -m "$(date +%H-%M-%S)"
		 /mingw64/bin/git remote add origin git@github.com:junchentr/pic.git
		 /mingw64/bin/git push -u origin master
		 /mingw64/bin/git remote remove origin
		 done
	fi;
 rm -rf /e/GitCode/pic/* 
 
 sleep 3
done


