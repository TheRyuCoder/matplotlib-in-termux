#!/bin/bash
clr(){
  echo -e "\e["$1"m" $2
  }
clr 35 "Updating and upgrading"
clr 37
pkg update -y && pkg upgrade -y
clr 32 "Installing Figlet"
clr 37
pkg install figlet -y
clr 31 
figlet Ryu Coder
clr 36 "Installing dependences for Matplotlib"
clr 32 "Installing python"
clr 37
pkg install python -y
clr 32 "Installing all requirments"
clr 37
pip install -r req.txt 
clr 32 "Installing clang"
clr 37
pkg install clang -y
clr 32 "Installing freetype"
clr 37
pkg install freetype -y
clr 32 "Installing other pakages and config"
clr 37
pkg install libpng pkg-config -y
pip install matplotlib
export CFLAGS='-I/directory/containing/ft2build.h ...'
export LDFLAGS='-L/directory/containing/libfreetype.so ...'
clr 32 "Testing matplotlib"
clr 37 
python test.py
if [ -f test.png ]; then
clr 34 'Install complted with no errors'
fi
