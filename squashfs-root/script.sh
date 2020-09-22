#!/bin/sh

# Ask for default launcher
result=$(dialog --stdout --nocancel --title "Elige un launcher predeterminado" --menu "\nUsa [Arriba/Abajo] para seleccionar \nPulsa [Start] para confirmar\n" 0 0 0 1 "GMenu2X" 2 "SimpleMenu" 3 "PyMenu")
echo $result

# Disactivate the console on framebuffer
echo 0 > /sys/devices/virtual/vtconsole/vtcon1/bind


case $result in

  2)
    cp files/frontend_start_simplemenu /media/data/local/sbin/frontend_start
    ;;

  3)
    cp files/frontend_start_pymenu /media/data/local/sbin/frontend_start
    ;;

  *)
    rm /media/data/local/sbin/frontend_start
    ;;
esac

reboot
