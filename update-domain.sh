#!/bin/bash
param1="${1:-https://tungocvan.com}"
param2="${2:-dbwp}"
mysql -u tungocvan -p'Van@2024' --execute="use $param2; UPDATE wp_options SET option_value = '$param1' WHERE  option_id = 1;UPDATE wp_options SET option_value = '$param1' WHERE  option_id = 2  ;SELECT option_value FROM wp_options LIMIT 2;"
