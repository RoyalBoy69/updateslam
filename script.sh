#Update script of UserBot by @marshmello61
#Some fixes and imported by @RoyalBoyPriyanshu

repo="slam-mirrorbot"
rm -rf ${repo}

echo "You're running the slam mirror bot Updater script"
echo " "
# Get username of user
echo -n "Enter your GitHub username: "
read userName
echo " "

# Check if user has forked or has the same repo name
echo -n "Have you forked slam-mirrotbot from breakdowns or has the same repo name i.e. slam-mirrotbot? [y/n]: "
read fork
echo " "

if [[ "${fork}" == 'y' ]]; then
	git clone https://github.com/${userName}/${repo}.git
	cd ${repo}
elif [[ "${fork}" == 'n' ]]; then
	echo -n "Enter your repo name: "
	read repo
	git clone https://github.com/${userName}/${repo}.git
	cd ${repo}
else
        echo " "
        echo "You were only supposed to enter y or n"
        exit 1
fi

echo " "
echo "Updating your slam-mirrorbot"
git pull https://github.com/SlamDevs/slam-mirrorbot.git
git diff
git commit -m "updated 🥺"
git push
echo " "
echo "Updated"
cd ..
rm -rf ${repo}
