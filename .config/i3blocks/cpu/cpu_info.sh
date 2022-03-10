#!/bin/sh
TEMP=$(sensors | grep 'temp1:\|Tdie'| grep '[0-9]*.[0-9]*°C' -o | head -n 1)
CPU_USAGE=$(mpstat 1 1 | awk '/Average:/ {printf("%s\n", $(NF-9))}')
echo "$CPU_USAGE $TEMP" | awk '{ printf(" CPU:%6s% @ %s \n"), $1, $2 }'
