#!/bin/bash
echo "start"

apt install apache2
systemctl enable apache2.service
systemctl start apache2.service

echo "done!"
