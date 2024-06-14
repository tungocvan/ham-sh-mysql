#!/bin/bash
param1="$1"

# Kiểm tra xem tham số đã được cung cấp hay chưa
if [ -z "$param1" ]; then
  echo "Vui lòng nhập tên cơ sở dữ liệu cần import."
  exit 1
fi

# Kiểm tra xem cơ sở dữ liệu đã tồn tại hay chưa
if mysql -u root -p --execute="SHOW DATABASES LIKE '$param1'" | grep -q "$param1"; then
  echo "Cơ sở dữ liệu $param1 đã tồn tại."
  exit 1
fi

# Tạo cơ sở dữ liệu mới với CHARACTER SET và COLLATE hỗ trợ utf8mb4
echo "Tạo cơ sở dữ liệu $param1 với CHARACTER SET utf8mb4 và COLLATE utf8mb4_unicode_ci ..."
mysql -u root -p --execute="CREATE DATABASE $param1 CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci"

# Import dữ liệu vào cơ sở dữ liệu
echo "Import dữ liệu vào cơ sở dữ liệu $param1 ..."
mysql -u root -p -D "$param1" < "$param1.sql"
echo "Dữ liệu đã được import vào cơ sở dữ liệu $param1 thành công."
