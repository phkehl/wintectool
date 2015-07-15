# wintectool

## Description

This is a script to manage a _Wintec WGS-1000_ ("G-Trender") a.k.a. _Navilock NL-120GR_ ("Tr@cksketch") GPS receiver / logger.

It is a [Perl](https://www.perl.org/) program that runs in Linux and in Windows ([Strawberry Perl](http://strawberryperl.com/)). However, the latter is largely untested. YMMV.

Features:

- get and set device info (name, info and s/n strings)
- configure logging modes
- download logs (tracks and waypoints) in ASCII, raw and GPX format (various options for splitting and naming the files)
- get and set marks
- take screenshots

## Copyright

See source code.

## Installation

Copy the `wintectool` script somewhere and make it executable, e.g.:

- `sudo install -m 0755 wintectool /usr/local/bin/wintectool`

Install dependencies ([Device::SerialPort](https://metacpan.org/pod/Device::SerialPort), [GD](https://metacpan.org/pod/GD), [Date::Time](https://metacpan.org/pod/Date::Time), [File::Slurp](https://metacpan.org/pod/File::Slurp), [Time::Hires](https://metacpan.org/pod/Time::HiRes)):

- Debian, Ubuntu, et al.: `apt-get install libdevice-serialport-perl libgd-gd2-perl libdatetime-perl libtime-hires-perl libfile-slurp-perl`

## Usage

By default the program does nothing.

To get some information on the device say:

- `wintectool --device /dev/ttyUSB0 --info`

Multiple commands can be run in one go. E.g. to get the device info and download all tracks in ASCII format say:

- `wintectool --device /dev/ttyUSB0 --info --dat`

## Manual

The manual is built into the program:

- Help on the available flags: `wintectool --help`
- Full manual: `wintectool --man`


## Bugs, TODOs

See POD / source code.


