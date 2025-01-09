#!/bin/bash                                                                                                                                                                                                                                                                                                             
<< disclaimer

	checking the voting age using shell script

disclaimer

read -p "Enter your name : " votername
read -p "Enter your age : " voterage

if [[$voterage <= 18]];
then
        echo "$votename is eligible for voting"
else
        echo "$votename with age $voterage not eligible for voting"
fi   
