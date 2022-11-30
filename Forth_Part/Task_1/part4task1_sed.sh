#!/bin/bash

sed -i "s/ec2-private_ip/$(grep PrivateIpAddress info.json | head -n1 | cut -d'"' -f4)/" terraform.tf




# grep PrivateIpAddress info.json | head -n1 | cut -d'"' -f4)" 

# Syntax: sed "s/pattern1.bunu/pattern2.bununladeğiştir/" değişecek.dosya		Substitute pattern2 for first instance of pattern1 in a line
# https://tldp.org/LDP/abs/html/x23170.html
# https://www.linuxtechi.com/20-sed-command-examples-linux-users/
# [Grep, Sed, Awk, Cut Commands] (https://blog.knoldus.com/play-with-text-in-linux-grep-cut-awk-sed/)