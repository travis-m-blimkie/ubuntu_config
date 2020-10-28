#!/bin/bash

# Simple bash script to check if a restart is required
# after updating.

if [ -f /var/run/reboot-required ]; then
	printf "\e[1;31mReboot required!\e[0m\n\n"
else
	printf "\e[1;32mNo reboot required.\e[0m\n\n"
fi
