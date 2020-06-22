#!/bin/sh

echo 'Copying files...'

cp .config/i3 ~/.config/ -rf && cp .config/polybar ~/.config/ -rf && cp .config/rofi ~/.config/ -rf

echo 'DONE...'
cd ..
