#!/bin/bash
host=192.168.2.178
ping_result="NOT_OK"
until ping -q -c 4 $host >/dev/null
do
echo "No hay conexión"
done
sudo systemctl restart dcmlocker.service
echo "reiniciado"
