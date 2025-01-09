#!/bin/bash

# Automatically create multiple folders with the help of a for loop and mkdir in shell scripting

read -p "Enter how many folder want to create : " folder_number

for ((num = 1; num <= $folder_number; num++)); do
	read -p "Enter the $num folder name : " foldername
   	mkdir "$foldername"
done
