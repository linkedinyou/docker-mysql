docker-mysql
============

container running mysql

- to run with default password "mysqlpasswd" :

docker run -d --name xxxx quantumobject/docker-mysql

- to run it with expecified password :

docker run -d --name xxxx -e MYSQL_PASSWD=xxxxx quantumobject/docker-mysql

- to run and create a dababase with password and default user :

docker run   ************ still need to be done 

- to create backtup from that container to /var/backup volume folder :

docker exec -it container_id backup

- to restored database from backup at volume /var/backup   ******* still need to be done

docker exec -it container_id restore

Nota: it still no ready to be used ...
