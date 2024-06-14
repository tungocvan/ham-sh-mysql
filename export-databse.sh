#!/bin/bash
param1="$1"

# Kiểm tra xem tham số đã được cung cấp hay chưa
if [ -z "$param1" ]; then
  echo "Vui lòng nhập tên cơ sở dữ liệu cần sao lưu."
  exit 1
fi
echo "Mat khau bo trong va Enter"
# Kiểm tra xem cơ sở dữ liệu có tồn tại không
if mysql -u root -p --execute="SHOW DATABASES LIKE '$param1'" | grep -q "$param1"; then
  echo "Đang sao lưu cơ sở dữ liệu $param1 ..."
  echo "Mat khau bo trong va Enter"
  mysqldump -u root -p "$param1" > "$param1.sql"
else
  echo "Cơ sở dữ liệu $param1 không tồn tại."
  exit 1
fi
