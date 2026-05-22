#!/bin/bash

read -p "Enter a number (1-3): " number

case $number in
  1)
    echo "You selected number one."
    ;;

  2) 
    echo "You selected number two."
    ;;

  3) 
    echo "You selected number three."
    ;;

  *)
    echo "Invalid number"
    ;;
  
esac
