# move to node app parent
cd ~/

# CLONE new code
git clone https://github.com/eebhub/openstudio_nodejs.git

# move to platform.git created folder
cd openstudio_nodejs

# UPDATE node packages
sudo npm update

# STOP the existing node server & app
cd ~/
cd openstudio_nodejs-live
forever stop app.js

# move to node app parent
cd ~/

# RENAME OLD app folder to archive
sudo mv -f openstudio_nodejs-live "archive_`date +%Y`-`date +%m`-`date +%d`"/; sudo rm -rf openstudio_nodejs-live;
#sudo cp -rf openstudio_nodejs-live/* "archive_`date +%Y`-`date +%m`-`date +%d`"/; sudo rm -rf openstudio_nodejs-live; #if no existing folder, contents will just be deleted
# mv openstudio_nodejs-live "archive_`date +%Y`-`date +%m`-`date +%d` #if same day, this will move into existing daily archive & break live

# RENAME NEW app folder to live
mv openstudio_nodejs openstudio_nodejs-live

# move to app folder live
cd openstudio_nodejs-live

# START the new node server & app
forever start app.js
