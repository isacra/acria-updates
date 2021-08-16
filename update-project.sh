dirList=$(find . -maxdepth 1 -type d)
for dir in $dirList
do
echo "++++++++++++++++++ Updating $dir ++++++++++++++++++" 
pushd $dir > /dev/null

if [ -d .git/ ]; then

	git pull
	echo "------------------ $dir Updated ------------------"
fi

popd "$@" > /dev/null

printf "\n"

done
