#!/usr/bin/env bash

polybar-msg cmd quit

echo "---" | tee -a /tmp/bottom-bar.log
polybar bottom-bar 2>&1 | tee -a /tmp/bottom-bar.log & disown
