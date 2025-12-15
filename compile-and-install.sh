#!/bin/bash

echo "assuming paths.h already edited!!"
echo "assuming paths.h already edited!!"
echo "[ press Enter ]"
read dummy

sudo mkdir -pv /opt/translit
sudo mkdir -pv /opt/translit/transliteration-rules
sudo mkdir -pv /opt/translit/docs


gcc -o translit translit.c reg_exp.c reg_sub.c 

sudo mv -vf translit /opt/translit/

sudo cp -vf *.rus /opt/translit/transliteration-rules/

sudo cp -vf example.* translit.txt translit.1 /opt/translit/docs

sudo cp -vf *.txt *.doc /opt/translit/docs/

echo "now  add /opt/translit to your .bashrc: "
