#!/bin/bash
param1="$1"
split -b 90M -d -a 2 "$param1" "$1_"
