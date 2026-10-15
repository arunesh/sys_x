# Find out where a disk was mounted prior to boot (if not added to fstab).
lsblk -o NAME,UUID,FSTYPE,SIZE,MOUNTPOINTS

# Search prior boot logs -b = prior and -1 = last bootg
journalctl -b -1 | grep -i "mount"
journalctl -b -1 | grep -i "mount" | grep -i "sdb"
journalctl -b -1 | grep -i "mount" | grep -i "sdc"
