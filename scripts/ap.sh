##############################
# Set up AP using RaspAP
##############################

# Backup and erase the existing WPA supplicant config
sudo cp /etc/wpa_supplicant/wpa_supplicant.conf /etc/wpa_supplicant/wpa_supplicant.conf.bak
sudo cp /dev/null/etc/wpa_supplicant/wpa_supplicant.conf

# Ensure WPA supplicant has the following lines
echo 'ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1' >> /etc/wpa_supplicant/wpa_supplicant.conf

# Download and Run RaspAP installer
wget -q https://git.io/voEUQ -O /tmp/raspap && bash /tmp/raspap
<<<<<<< HEAD
=======

>>>>>>> 8566ca0bea8d6e5928982dfb7db047ad9f6e5367
