#!/bin/bash
apt update
apt -y install apache2
echo "Hello world from" > /var/www/html/index.html