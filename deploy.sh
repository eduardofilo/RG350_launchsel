#!/bin/bash

rm releases/launchsel.opk
mksquashfs squashfs-root/ releases/launchsel.opk -all-root -noappend -no-exports -no-xattrs
scp releases/launchsel.opk rg350:/media/data/apps/
#scp squashfs-root/files/frontend_start_launchsel rg350:/media/data/local/sbin/frontend_start
#ssh rg350 /sbin/reboot
