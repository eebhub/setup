#Move the the htdocs root
cd ~/
#Rename the old folder
mv platform "Archive_`date +%B``date +%d``date +%y`"

#git clone in the new one
git clone https://github.com/eebhub/platform.git

#move to platform
cd platform

#update the application if necessary
sudo npm update

#Move the the htdocs root
cd ~/

#Stop the Existing server
forever stop

#move to platform
cd platform

#Start the app
forever start app.js


