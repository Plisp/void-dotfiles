# vim: set ts=4 sw=4 et:

#if [ -x /sbin/sysctl -o -x /bin/sysctl ]; then
    msg "Loading sysctl(8) settings..."
    for i in /usr/lib/sysctl.d/* \
             /etc/sysctl.conf; do

        if [ -e "$i" ]; then
            #printf '* Applying %s ...\n' "$i"
            sysctl -p "$i"
        fi
    done
#fi
