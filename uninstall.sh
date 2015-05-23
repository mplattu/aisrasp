#!/bin/sh

# https://github.com/mplattu/aisrasp
#
# This script uninstalls aisrasp stuff from your Raspbian installation
# See README.md for more details

rm -f /etc/init.d/ais
rm -f /etc/init.d/ais-bliso
rm -f /etc/init.d/ais-dispatcher
rm -f /etc/init.d/ais-logger
rm -f /etc/init.d/ais-reader

rm -f /usr/local/bin/ais-dispatcher
rm -f /usr/local/bin/ais-logger
rm -f /usr/local/bin/ais-minicom
rm -f /usr/local/bin/ais-reader
rm -f /usr/local/bin/ais-settings

rm -f /usr/local/sbin/ais-bliso
