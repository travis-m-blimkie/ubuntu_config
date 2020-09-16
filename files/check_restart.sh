#!/bin/bash

if [ -f /var/run/reboot-required ]; then
	printf "\n\e[1;31mReboot required!\e[0m\n\n"
else
	printf "\n\e[1;32mNo reboot required.\e[0m\n\n"
fi
