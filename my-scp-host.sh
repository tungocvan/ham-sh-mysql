#!/bin/bash
param1="$1"
param2="${2:-'~/temp'}"
# Thực hiện lệnh scp
echo "copy 1 file hoac 1 thu muc "
scp -r "$param1" root@45.117.171.106:"$param2"
