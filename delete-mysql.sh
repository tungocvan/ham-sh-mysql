#!/bin/bash
param1="$1"

# Kiểm tra xem tham số đã được cung cấp hay chưa
if [ -z "$param1" ]; then
  echo "Vui lòng nhập tên cơ sở dữ liệu cần xóa."
  exit 1
fi
echo "mat khau bo trong va enter"
# Kiểm tra xem cơ sở dữ liệu có tồn tại không
if mysql -u root -p --execute="SHOW DATABASES LIKE '$param1'" | grep -q "$param1"; then
  echo "Đang xóa cơ sở dữ liệu $param1 ..."
  mysql -u root -p --execute="DROP DATABASE $param1"
  echo "Cơ sở dữ liệu $param1 đã được xóa thành công."
else
  echo "Cơ sở dữ liệu $param1 không tồn tại."
  exit 1
fi
