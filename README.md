# Intro
I made this script to quickly configure a new installation of Debian running KDE Plasma desktop. It's a WIP.

_Probably_ works with Debian derivitives such as Ubuntu.

# Instructions
## Option 1
Download and execute the debian-post-install.sh script. 
```bash
# Fetches install script from github and downloads it to the specified directory (i.e. /home/USER/Downloads)

wget https://raw.githubusercontent.com/kalenio/debian-post-install/master/debian-post-install.sh -P ~/Downloads | /bin/bash -P ~/Downloads | /bin/bash

# Makes the script executable
chmod +x ~/Downloads/debian-post-install.sh

# Runs the script
bash ~/Downloads/debian-post-install.sh
```
## Option 2
Copy and paste the entire glorious `debian-post-install.sh` script into your terminal and run it.  
