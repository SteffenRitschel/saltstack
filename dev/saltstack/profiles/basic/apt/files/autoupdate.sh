#!/bin/bash                                                                                                                            
###########################################
#### This File is managed by Saltstack ####
###########################################

/usr/bin/apt-get update
/usr/bin/apt-get upgrade -y
/usr/bin/apt-get dist-upgrade -y
/usr/bin/apt-get autoremove -y
/usr/bin/apt-get clean
