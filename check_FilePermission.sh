#!/bin/bash
# File Permission Checker

echo "Enter file path:"
read filepath
if [ -r $filepath ]; then
    echo "File is readable."
fi
if [ -w $filepath ]; then
    echo "File is writable."
fi
if [ -x $filepath ]; then
    echo "File is executable."
fi
