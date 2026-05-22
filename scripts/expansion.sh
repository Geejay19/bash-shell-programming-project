#!/bin/bash

# Goal 20: Expansion mechanism

echo "Brace expansion example:"
echo file{1,2,3}.txt

echo
echo "Tilde expansion example:"
echo ~

echo
echo "Variable expansion example:"
course="Linux"
echo "Course name is $course"

echo
echo "Arithmetic expansion example:"
echo "7 + 5 = $((7 + 5))"
