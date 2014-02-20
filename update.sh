# move to node app parent
cd ~/

# CLONE new code
git clone https://github.com/eebhub/platform.git

# move to platform.git created folder
cd platform

# UPDATE node packages
sudo npm update

# STOP the existing node server & app
forever stop 0

# move to node app parent
cd ~/

# RENAME OLD app folder to archive
mv platform-live "archive_`date +%Y`-`date +%m`-`date +%d`"

# RENAME NEW app folder to live
mv platform platform-live

# move to app folder live
cd platform-live

# START the new node server & app
forever start app.js
