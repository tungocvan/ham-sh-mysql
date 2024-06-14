#!/bin/bash
param1="${1:-wordpress}"
tar -czvf "$param1.tar.gz"  "$param1"
