#!/bin/bash

# Script Name                Demo.sh
# Author Name                Yue Moua
# Date of latest revision    10/25/2023
# Purpose                    Demonstrate Functions
# Execution                  bash funchs.sh or ./functions.sh chmod -x demo.sh

# Declaration of variables

# Declaration of functions

print_login_history() {
  echo "User login history:"
  last
  echo "This is the login history"
  echo
}

# Call the function three times
print_login_history
print_login_history
print_login_history

# Main

print_login_history

# End