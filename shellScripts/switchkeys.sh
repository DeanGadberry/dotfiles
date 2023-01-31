#!/bin/bash

# Switch Browser navigation keys with home and end

xmodmap -e 'keycode 166 = Home'
xmodmap -e 'keycode 167 = End'
xmodmap -e 'keycode 110 = XF86Back'
xmodmap -e 'keycode 115 = XF86Forward'
