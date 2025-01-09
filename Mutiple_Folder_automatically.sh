#!/bin/bash

# Automatically create multiple folders with the help of a for loop and mkdir in shell scripting

for num in {1..5}; do
    mkdir "demo$num"
done
