#!/bin/bash

mysql -h 127.0.0.1 -u root -pmy-secret-pw < /usr/src/tribalwars/db_templates/tribalwars_main.sql
mysql -h 127.0.0.1 -u root -pmy-secret-pw < /usr/src/tribalwars/db_templates/tribalwars_world.sql

# exec "$@"