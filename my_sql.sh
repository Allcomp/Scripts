#!/bin/bash

DB="localhost"
USER="root"
PASS="M007295F"
DATE=`date +"%Y-%m-%d %T"`

mysql --host=localhost -u "$USER" -p"$PASS"  <<EOF
	update status set last_run="${DATE}";
EOF


