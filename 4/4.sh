#!/usr/bin/bash

read -p "Enter name of file 1: " F1
read -p "Enter name of file 2: " F2

sed -e "r $F2" "$F1" > file