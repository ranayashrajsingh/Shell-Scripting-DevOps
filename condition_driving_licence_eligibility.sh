#!/bin/bash

# Checking the driving licence eligibility to drive a car using shell scripting

echo -e "Checking the eligibility for your licence \n"

read -p "Enter your name: " name
read -p "Enter your age: " age

if [[ $age -ge 18 ]]; then
    echo "$name is eligible for a driving licence."
elif [[ $age -ge 16 && $age -lt 18 ]]; then
    echo "$name is eligible for a learning driving licence."
else
    echo "$name is not eligible for a driving licence at $age years of age."
fi
