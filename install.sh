#!/bin/sh

# https://github.com/mplattu/aisrasp
#
# This script installs aisrasp stuff on your Raspbian installation
# See README.md for more details

install -o root -g root -t /etc/init.d/ etc/init.d/*
install -o root -g root -m 644 -t /etc/cron.d/ etc/cron.d/*
install -o root -g root -t /usr/local/bin/ usr/local/bin/*
install -o root -g root -t /usr/local/sbin/ usr/local/sbin/*
