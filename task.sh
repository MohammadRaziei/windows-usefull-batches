#!/bin/sh
echo "Initial Updating ..."
apt-get update > /dev/null;
apt-get upgrade -y > /dev/null;
echo "Initial Updating is DONE :)"
#-------------------------
app=build-essential
echo "Installing $app"
apt-get install $app -y > /dev/null && echo "Installing $app is DONE :)"
#-------------------------
#app=git
#echo "Installing $app"
#apt-get install $app -y > /dev/null && echo "Installing $app is DONE :)"
##-------------------------
app=tree
echo "Installing $app"
aptitude install $app -y > /dev/null && echo "Installing $app is DONE :)"
#-------------------------
apt-get update > /dev/null;
echo "Finished :)"