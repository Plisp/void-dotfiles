# vim: set ts=4 sw=4 et:

install -m0664 -o root -g utmp /dev/null /run/utmp
install -m0664 -o root -g utmp /dev/null /var/log/wtmp
install -m0600 -o root -g utmp /dev/null /var/log/btmp
install -dm1777 /tmp/.X11-unix /tmp/.ICE-unix
rm -f /etc/nologin /forcefsck /forcequotacheck /fastboot
