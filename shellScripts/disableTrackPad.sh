#!/bin/bash
tp=`xinput list --name-only | grep "TM3471-020"`
# mouse=`xinput list --name-only | grep "Mouse"`

TPadState=`xinput --list-props "$tp"|grep "Device Enabled"|tail -c -2`
# MouseState=`xinput --list-props "$mouse"|grep "Device Enabled"|tail -c -2`

if [ "$TPadState" = "1" ];
then
        `xinput --set-prop "$tp" "Device Enabled" 0`
    TPadState+=$(xinput --list-props "$tp"|grep "Device Enabled"|tail -c -2)
        notify-send -t 1000 "TouchPad disabled!"
else
        `xinput --set-prop "$tp" "Device Enabled" 1`
    TPadState+=$(xinput --list-props "$tp"|grep "Device Enabled"|tail -c -2)
        notify-send -t 1000 "TouchPad enabled!"
fi



: '
if [ "$TPadState" = "0" ];
then
        `xinput --set-prop "$mouse" "Device Enabled" 0`
    MouseState+=$(xinput --list-props "$mouse"|grep "Device Enabled"|tail -c -2)
        echo "Mouse disabled!"
else
        `xinput --set-prop "$mouse" "Device Enabled" 1`
    MouseState+=$(xinput --list-props "$mouse"|grep "Device Enabled"|tail -c -2)
        echo "Mouse enabled!"
fi
'
