#!/bin/bash

if [ -z "$S3_CRON_FILE" ]; then echo "S3_CRON_FILE is unset"; exit 1; fi

aws s3 cp $S3_CRON_FILE /etc/cron.d/
chmod 0644 /etc/cron.d/cron-jobs

touch /var/log/cron.log

cron && tail -f /var/log/cron.log
