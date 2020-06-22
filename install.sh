#!/bin/sh

git clone https://github.com/jash-maester/i3_custom-build.git 

cd i3_custom-build
cp .config/i3 ~/.config/ -rf && cp .config/polybar ~/.config/ -rf && cp .config/rofi ~/.config/ -rf

echo 'DONE...'
cd ..
