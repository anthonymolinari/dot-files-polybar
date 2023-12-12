#!/usr/bin/env bash


polybar-msg cmd quit

echo "---" | tee -a /tmp/polybar.log
polybar --config=$HOME/.config/polybar/config.ini mybar 2>&1 | tee -a /tmp/polybar.log & disown

echo "Bars Launched..."
