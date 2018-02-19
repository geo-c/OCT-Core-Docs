#!/bin/bash

sudo /usr/local/bin/docker-compose exec postgis pg_dumpall -c -U oct> /home/webteam/OCT-Install/Backup/dump_`date +%d-%m-%Y"_"%H_%M_%S`.sql
