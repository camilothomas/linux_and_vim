#!/bin/bash

# simple char cuts with -c

first_command() {
    grep 'Tara Stevens' data_file1 | cut -c8-
    grep "Tara Stevens" data_file1 | cut -c1-6
}

echo -n "Welcome"
echo -n "to"
echo "Paradise"
echo -e "This is the cut examples script\n"
# echo -e "can\nyou\ndo\nit\nagain"
first_command 
second_command() {
    cut -d: -f-2 data_file1
    cut -d: -f3- data_file1 | tr -d : | sort
}
# order matters - function must be declared before it is called
second_command
