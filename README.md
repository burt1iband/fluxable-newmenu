This readme is for the fluxable-newmenu application.
Fluxable new menu is a small program written in bash to display application launchers in well organized submenus.
It should work in any graphical Linux desktop environment as long as a supported filemanager is installed.
Some of the most popular filemanagers are auto-detected, and when more than one is present on the system the best is chosen while avoiding conflicts.
If the user does not have one of the filemanagers taht can be auto detected or wishes to override the manual selection a filemanager can be specified in 
~/.fluxable/fluxable.conf.
There is also a system wide configuration file in /etc/fluxable.
The filemanagers that are recognized by default are caja, nautilus, and pcmanfm.

To install just run the following command.
sudo ./install-fluxable-newmenu.sh
from with in the directory where you extracted the tarball for this package,
or look for fluxable-newmenu in your distro's repositories.
For more information please see the manpage.
Find our code on github at:
https://github.com/burt1iband/fluxable-newmenu/

Pull from master if your distro has full systemd integration.
If you are using Vinux5 or older, Ubuntu, Ubuntu-gnome, mate-ubuntu; or any distro release that can't shutdown via systemd, pull from the vnx branch.

This work is released under the terms of the GNU publilc license, version 3.
As usual it may be distributed under the terms of this version of the gpl or any later version you prefer.
