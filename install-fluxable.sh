#!/bin/bash
## Install fluxable components/flulxable-newmenu
## by B.H., 22/12/2015
## This distro agnostic installer does not install required filemanager.

## Set the username since this installer is probablyl being run with sudo
WHO="$(logname)"

## Install components/do not overwrite existing config files
sudo install -m 755 ./fluxable-newmenu /usr/bin/
sudo install -m 755 ./monitor-toggle /usr/bin/
sudo install -m 644 ./fluxable-newmenu.desktop /usr/share/applications/
sudo install -m 644 ./fluxable-newmenu.1.gz /usr/share/man/man1/

if ! [ -d /etc/fluxable ]; then
sudo mkdir -p /etc/fluxable
sudo install -m 644 ./fluxable.conf.org /etc/fluxable/fluxable.conf
else
if [ -f /etc/fluxable/fluxable.conf ]; then
sudo install -m 644 ./fluxable.conf.org /etc/fluxable/fluxable.conf.org
     else
sudo install -m 644 ./fluxable.conf.org /etc/fluxable/fluxable.conf
     fi
     fi

if ! [ -d $HOME/.fluxable ]; then
mkdir -p $HOME/.fluxable
sudo chown $WHO ~/.fluxable
     fi

if [ -f $HOME/.fluxable/fluxable.conf ]; then
cp ./fluxable.conf.org $HOME/.fluxable/fluxable.conf.org
     else
cp ./fluxable.conf.org $HOME/.fluxable/fluxable.conf
sudo chown -R $WHO ~/.fluxable
     fi

if [ -f "/usr/bin/caja" ] || [ -f "/usr/bin/nautilus" ] || [ -f "/usr/bin/pcmanfm" ]; then
echo "One or more usable file managers have been detected."
echo "Fluxable-newmenu should now be correctly installed on this system.
Launch it by typing fluxable-newmenu in your dash or other run dialog.
For most efficient use launch with a custom keybinding."
     else
echo "Although fluxable-newmenu should now be correctly installed, however
none of the default file managers used by fluxable-newmenu has been detected.
You must specify an installed filemanager to use in fluxable.conf
or install a supported filemanager."
     fi

echo "Type man fluxable-newmenu for more information." 
exit=0
