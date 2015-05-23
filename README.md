# aisrasp
AIS base station using Raspberry Pi

## Summary

This project aims to make a 
[AIS](https://en.wikipedia.org/wiki/Automatic_Identification_System) 
base station using [Raspberry Pi](https://www.raspberrypi.org/). When in 
production, the base station will send the AIS data to
[AIS Hub](http://www.aishub.net/), a free AIS network.

The project is sponsored by [University of Helsinki](https://university.helsinki.fi/en).

## Project Status

At the moment the base station will log all incoming data to text files.

## Components

Project will use following hardware components:

* Raspberry Pi rev 1
* [BLiSo](http://www.circuitsurgery.com/raspberrypi/bliso.html), a Button and LED module for RaspBi (show free disk & activate shutdown)
* [A025 easyAIS](http://www.easyais.com/en/products/easyais-a025/) receiver
* USB-serial dongle

Software components:

* [aisdispatcher](http://www.aishub.net/aisdispatcher-linux.html), ARM glibc version. Decodes raw NMEA data to AIS information.
* [WiringPi2-Python](https://github.com/Gadgetoid/WiringPi2-Python), a Python library to BLiSo

## Installation

1. Install `aisdispatcher` to `/usr/local/bin`
2. Install `WiringPi2-Python`
3. Execute `install.sh`
