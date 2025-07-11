#!/bin/bash
echo "start checking apache status"

if systemctl list-unit-files | grep -q "^httpd.service"; then
  SERVICE_NAME="httpd"
elif systemctl list-unit-files | grep -q "^apache2.service"; then
  SERVICE_NAME="apache2"
else
  echo "Apache юніт не існує у systemd"
  exit 1
fi
