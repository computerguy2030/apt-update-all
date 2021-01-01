# apt-update-all
Below is a simple script I wrote to update all the hosts in my ~/.ssh/config file and satisfy my update OCD.
I could'nt find anything similar with a quick Google search so I hope this may help someone.

Future improvements possible but don't count on regular updates. Still a few features I could implement

Notes:
###################################################################
IMPORTANT SCRIPT WILL NOT WORK IF YOU DO NOT MODIFY:
Passwords for sudo are taken from a "passwords" file in ~/.ssh
Enter hosts to exclude in grep -ve "#exclude here" line and add additional with -e ""

###################################################################

Script performs: sudo -S apt-get update && sudo apt-get upgrade -y"

To enable in any directory:
alias update_all='bash /usr/bin/update_all.sh'
add above line to ~/.bashrc or ~/.zshrc

Thanks to all the regex experts on Stackoverflow etc. helping noobs like me use grep 
