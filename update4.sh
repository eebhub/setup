# CLONE new code
cd ~/
git clone https://github.com/buildsci/energyplus.io.git

# UPDATE node packages
cd energyplus.io
sudo npm update

# RENAME OLD app folder to archive by Copying then Removing
cd ~/
mkdir "archives/archive_`date +%Y`-`date +%m`-`date +%d`"
cp -r energyplus.io-live/* "archives/archive_`date +%Y`-`date +%m`-`date +%d`"/
sudo rm -rf energyplus.io-live

# RENAME NEW app folder to live
mv energyplus.io energyplus.io-live

# START the new node server & app
cd energyplus.io-live
forever start app.js
