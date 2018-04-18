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

git commit -a -m "Just an update"
git pull upstream master
git push origin master

