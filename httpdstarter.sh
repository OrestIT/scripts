#!/bin/bash
echo "start"

sudo apt install apache2
sudo systemctl enable apache2.service
sudo systemctl start apache2.service

echo "done!"
