#!/bin/bash

num=0

while [[ $num -le 10 ]]
do
    if [[ $((num % 2)) -eq 0 ]]; then
        echo "$num"
    fi
    num=$((num + 1))
done


