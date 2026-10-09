#!/bin/bash
read -p "Enter a username to look up: $TARGER_USER"
echo "Searching the account list for: $TARGER_USER"
grep "$TARGER_USER" intel/users.csv

