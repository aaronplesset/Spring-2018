for file in $find *ipynb
do
	if grep -q $file .gitignore
	then
		echo $file "is in .gitignore"
	else
		echo $file >>.gitignore
		echo "added" $file "to .gitignore" 
	fi
done
git rm -r --cached .
git add .
git commit -a -m "Syncing git, ignoring local ipynb files"
git pull upstream master
git push origin master

