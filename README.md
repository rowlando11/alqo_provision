# alqo_provision
Automate alqo masternode builds
===============================

* Tested on Ubuntu 16.04.3 LTS stretch/sid *


This script will set up the remote masternode. But please make sure the local wallet has been set up and the private key already generated. 
See https://docs.google.com/document/u/1/d/e/2PACX-1vS8DV8o3rKguPaBDh8gqQRLnvSnEmhJn7o1jpqcgy0Yoirh-CJfh2_79V7RM7DgQDw68Oy6xWQ9pUHM/pub for instructions on how to do this.


On your vps, as the root user:

1) apt-get update && apt-get install git -y
1) git clone https://github.com/rowlando11/alqo_provision.git
2) cd alqo_provision
3) bash alqo_provision.sh
4) Add username, password, rpc pass and priv key when prompted


The script will set up a local user of your choice, disable remote root ssh logins, install fail2ban, ufw, configure ufw for incoming ssh and  incoming alqo connections and set up the masternode as well as adding a cron job which starts the alqod upon a reboot.

TODO: Add monit to monitor the alqod process and disk/cpu/memory usage.
