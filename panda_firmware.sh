#!/usr/bin/bash

export LD_LIBRARY_PATH=/data/data/com.termux/files/usr/lib
export HOME=/data/data/com.termux/files/home
export PATH=/usr/local/bin:/data/data/com.termux/files/usr/bin:/data/data/com.termux/files/usr/sbin:/data/data/com.termux/files/usr/bin/applets:/bin:/sbin:/vendor/bin:/system/sbin:/system/bin:/system/xbin:/data/data/com.termux/files/usr/bin/python
export PYTHONPATH=/data/openpilot

cd /data/openpilot/panda ; pkill -f boardd ; python -c "from panda import Panda; Panda().flash()" && reboot
# cd /data/openpilot/panda/board ; killall boardd ; make clean ; make && sleep 1 && reboot
# cd /data/openpilot/panda/board ; killall boardd ; make clean ; make && sleep 1 && (make recover || make recover) && echo Success! Rebooting in 2s... && sleep 2 && reboot
