#!/bin/bash

# Define the site to ping eg dns.quad9.net, one.one.one.one etc
SITE="one.one.one.one"

# Ping the site
ping -4c 4 $SITE | tail -1 | awk -F'/' '{print $5}' | xargs printf "%.0f ms\n"
