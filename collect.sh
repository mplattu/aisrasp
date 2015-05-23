#!/bin/sh

# https://github.com/mplattu/aisrasp
#
# This script copies aisrasp stuff from your Raspbian installation
# to this directory.
# See README.md for more details

cp /etc/init.d/ais etc/init.d/
cp /etc/init.d/ais-bliso etc/init.d/
cp /etc/init.d/ais-dispatcher etc/init.d/
cp /etc/init.d/ais-logger etc/init.d/
cp /etc/init.d/ais-reader etc/init.d/

cp /etc/cron.d/ais etc/cron.d/

cp /usr/local/bin/ais-dispatcher usr/local/bin/
cp /usr/local/bin/ais-logger usr/local/bin/
cp /usr/local/bin/ais-minicom usr/local/bin/
cp /usr/local/bin/ais-reader usr/local/bin/
cp /usr/local/bin/ais-settings usr/local/bin/

cp /usr/local/sbin/ais-bliso usr/local/sbin/

