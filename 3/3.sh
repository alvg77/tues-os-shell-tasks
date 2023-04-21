#!/usr/bin/bash

read -p "Enter directory full name: " DIR

echo $(ls $DIR | wc -l)