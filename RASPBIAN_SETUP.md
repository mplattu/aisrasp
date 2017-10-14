# Basic Raspbian Setup

 1. Download latest raspbian image [https://www.raspberrypi.org/downloads/raspbian/]. Use the regular one, not the minimal (since it is very minimal).
 2. Write image to an SD card (you cannot boot RaspBi from USB memory)
    `sudo sudo dd if=2017-09-07-raspbian-stretch-lite.img of=/dev/mmcblk0 bs=1M`
    where /dev/sdXXX is the device node of your USB memory
 3. Boot RaspPi
 4. Log in: `pi` and `raspberry`
 5. Set new password: `passwd`
 6. Go to superuser: `sudo su -`
 7. Final touch:

```
apt-get update
# Set default keyboard
apt-get install console-data
dpkg-reconfigure keyboard-configuration
service keyboard-setup restart
# Do not start X
ln -s /lib/systemd/system/multi-user.target /etc/systemd/system/default.target
# Prevent console autologin
ln -fs /lib/systemd/system/getty@.service /etc/systemd/system/getty.target.wants/getty@tty1.service
# Install openvpn
apt-get install openvpn
# Make sshd started on boot
ln -s /lib/systemd/system/sshd.service /etc/systemd/system/multi-user.target.wants/
# Allow sshd logins from VPN network only
echo "sshd: 192.168.201." >>/etc/hosts.allow
echo "sshd: ALL" >>/etc/hosts.deny
# Copy VPN configuration data, e.g.
scp [YOUR-HY-USERNAME]@cedi.it.helsinki.fi:ais/01/* /etc/openvpn/
echo "AUTOSTART=\"all\"" >>/etc/default/openvpn
# Move /var/log to ramdisk to maximize SD card life
echo "tmpfs /var/log tmpfs nodev,nosuid,noexec,nodiratime,size=1024M 0 0" >>/etc/fstab
```

Continue from [https://github.com/mplattu/aisrasp/README.md]
