#!/bin/bash
# https://unix.stackexchange.com/questions/482755/is-there-a-command-to-display-colors-when-giving-hex-value-in-terminal
# usage:
# ./hexcodeColorCheck.sh "FF0088" "xx241d"
perl -e 'foreach $a(@ARGV){print "\e[48:2::".join(":",unpack("C*",pack("H*",$a)))."m \e[49m "};print "\n"' "$@"
