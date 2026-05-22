#!/bin/bash

# Basic calculator script for bash shell programming project

Add() {
    local a=$1
    local b=$2
    return $((a + b))
}

Minus() {
    local a=$1
    local b=$2
    return $((a - b))
}

Multiply() {
    local a=$1
    local b=$2
    return $((a * b))
}

Divide() {
    local a=$1
    local b=$2

    if [[ $b -eq 0 ]]
    then
        echo "Error: division by zero is not allowed"
        return 1
    fi

    return $((a / b))
}

Calc() {
    local a=$1
    local b=$2
    local operation=$3

    case $operation in
        +)
            Add "$a" "$b"
            return $?
            ;;
        -)
            Minus "$a" "$b"
            return $?
            ;;
        \*)
            Multiply "$a" "$b"
            return $?
            ;;
        /)
            Divide "$a" "$b"
            return $?
            ;;
        *)
            echo "Error: unknown operation"
            return 1
            ;;
    esac
}

# Main program 

if [[ $# -ne 1 ]]
then
    echo "Usage: $0 number_of_calculations"
    exit 1
fi

count=$1

if [[ $count -le 0 ]]
then
    echo "Number of calculations must be greater than zero"
    exit 1
fi

for (( i=1; i<=count; i++ ))
do
    echo
    echo "Calculation $i of $count"

    read -p "Give 1st argument: " first
    read -p "Give 2nd argument: " second
    read -p "Give operation (+, -, *, /): " operation

    Calc "$first" "$second" "$operation"
    result=$?

    if [[ $result -eq 1 && "$operation" == "/" && "$second" -eq 0 ]]
    then
        echo "Calculation failed"
    elif [[ $result -eq 1 && "$operation" != "+" && "$operation" != "-" && "$operation" != "*" && "$operation" != "/" ]]
    then
        echo "Calculation failed"
    else
        echo "$first $operation $second = $result"
    fi
done

echo
echo "All calculations are completed."
