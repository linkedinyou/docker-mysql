#!/bin/bash
#this for reference only to create the restore scrips for each container ... the idea to use the same command for each container
#each container will have their own custum restore scritp for it ... 

#restore mysql
mysqlimport -u root -p${MYSQL_PASSWD} --all-databases /var/backups/alldb_backup.sql
