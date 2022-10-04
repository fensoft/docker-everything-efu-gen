#!/bin/bash
cron

sleep 1

if [ "$CRON" == "" ]; then
  CRON="5 0 * * *"
fi
echo "$CRON everything-efu-gen /config" | crontab

echo "directories:" > /config
for i in /mnt/*; do
  echo "  - $i" >> /config
done

everything-efu-gen /config

while `true`; do
  sleep 3600
done
