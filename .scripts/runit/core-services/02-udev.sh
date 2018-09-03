# vim: set ts=4 sw=4 et:

msg "Starting udev and waiting for devices to settle..."
udevd --daemon
udevadm trigger --action=add --type=subsystems
udevadm trigger --action=add --type=devices
udevadm settle
