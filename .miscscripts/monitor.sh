#!/bin/bash

if [ ! -z "$(xrandr -q | grep "*" | sed -n 2p)" ]; then
	xrandr --output "$(xrandr --query | grep primary | cut -d ' ' -f 1)" --off
fi
