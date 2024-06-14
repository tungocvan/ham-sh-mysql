#!/bin/bash
param1="$1"
echo "Luu y: link download ve: click vao folder can download ve share o che do : 'Anyone with the link' "
echo "sau do click vao folder can download ve lay id sau muc: folder/"
echo "thuc hien lenh sau:"
echo "./download-google-drive.sh id-google-folder"

gdown --folder "https://drive.google.com/drive/folders/$param1"

