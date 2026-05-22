#!/bin/bash

# Creating funbction to add two numbers

add_numbers(){
  num1=$1
  num2=$2
  result=$((num1 + num2))

  echo "The sum of $num1 and $num2 is $result"

  return 0
}

add_numbers 3 9

echo "Function return value was: $?"
