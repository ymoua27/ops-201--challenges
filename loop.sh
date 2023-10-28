#!/bin/bash

# Script Name:              loop.sh
# Author:                   Yue Moua
# Date of last revision:    10/27/2023
# Purpose:                  Write script to display running processes, ask user for a PID, kills the process with that PIUD, starts over to step 1 until the user exits with CTRL-C

# Declaration of variables

# Declaration of functions

while true; do
    
    
    echo "Running processes:"
    ps aux

    
    read -p "Enter the PID to kill (Ctrl+C to exit): " pid

    if [[ $pid =~ ^[0-9]+$ ]]; then
       
        kill -9 "$pid"
        echo "Process with PID $pid has been terminated."
    else
        echo "Invalid PID. Please enter a valid PID."
    fi
done

# Main


# End