#!/bin/bash

# Script Name:              lshw.sh
# Author:                   Yue Moua
# Date of last revision:    10/31/2023
# Purpose:                  Write script using lshw to display system info


# Function to display component information
display_info() {
  component="$1"
  echo "===== $component Information ====="
  lshw -c $component | grep -E "product:|vendor:|physical id:|bus info:|width:|size:|description:|logical name:|version:|serial:|capacity:|clock:|capabilities:|configuration:|resources:"
  echo
}

# Display information for each specified component
display_info "system"
display_info "cpu"
display_info "memory"
display_info "display"
display_info "network"

# Additional components and information can be added as needed

# End of script