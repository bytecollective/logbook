#!/bin/sh

VERSION_NUMBER=0.0.1

# if ~/.logbook does not exist, create it
if [[ ! -a ~/.logbook ]]; then
    echo "Creating file ~/.logbook"
    touch ~/.logbook
fi

while read line
do
    echo "$(date) - $line" >> ~/.logbook
    echo "$(tput cuu1)$(tput dl1)$(date) - $line"
done
