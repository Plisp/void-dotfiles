# vim: set ts=4 sw=4 et:

msg "Mounting root filesystem r/w..."
mount -o remount,rw / || emergency_shell
