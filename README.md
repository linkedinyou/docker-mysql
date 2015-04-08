# docker-mysql

Docker container for [mysql][3]

"The world's most popular open source database"

## Install dependencies

  - [Docker][2]

To install docker in Ubuntu 14.04 use the commands:

    $ sudo apt-get update
    $ sudo apt-get install docker.io

 To install docker in other operating systems check [docker online documentation][4]

## Usage

To run container use the command below with default password "mysqlpasswd" :

    $ docker run -d --name xxxx quantumobject/docker-mysql

To run it with expecified password :

    $ docker run -d --name xxxx -e MYSQL_PASSWD=xxxxx quantumobject/docker-mysql

To create backtup from that container to /var/backup volume folder :

    $ docker exec -it container_id backup

To restored database from backup at volume /var/backup :

    $ docker exec -it container_id restore

Only work if been backup prior or file with backup been copy to Volume /var/backup or Volume from prior container with mysql been share linking it and backup command used already in the original container.

To configured or add additonal database and user and others mysql internal configuration can be done by accesing the container :

    $ docker exec -it container_id /bin/bash

## More Info

About MySQL [www.mysql.com][1]

To help improve this container [quantumobject/docker-mysql][5]

[1]:https://www.mysql.com/
[2]:https://www.docker.com
[3]:https://www.mysql.com/downloads/
[4]:http://docs.docker.com
[5]:https://github.com/QuantumObject/docker-mysql
