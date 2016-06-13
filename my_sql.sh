#!/bin/bash

DB="localhost"
USER="root"
PASS="12345"
DATE=`date +"%Y-%m-%d %T"`

mysql --host=localhost -u "$USER" -p"$PASS"  <<EOF
	update status set last_run="${DATE}";
EOF


