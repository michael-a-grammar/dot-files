#!/usr/bin/env bash

polybar-msg cmd quit

echo "---" | tee -a /tmp/bottom-left-bar.log
echo "---" | tee -a /tmp/bottom-centre-bar.log
echo "---" | tee -a /tmp/bottom-right-bar.log

polybar bottom-left-bar 2>&1 | tee -a /tmp/bottom-left-bar.log & disown
polybar bottom-centre-bar 2>&1 | tee -a /tmp/bottom-centre-bar.log & disown
polybar bottom-right-bar 2>&1 | tee -a /tmp/bottom-right-bar.log & disown
