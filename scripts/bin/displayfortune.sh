#! /bin/bash
stty -F /dev/ttyUSB0 19200;
echo -ne "\x0c" > /dev/ttyUSB0;
f=$(fortune -n 41 -s);
printf '%-40s' "$f" > /dev/ttyUSB0;

