***Docker***

**Requirements:**  Docker, Docker compose

* **Docker Compose**

[https://docs.docker.com/compose/](https://docs.docker.com/compose/)

* **Docker**

[https://docs.docker.com/](https://docs.docker.com/)


* **Get Data**

 Download the folder with the Dockerfiles from the Github Repository OCT-Core-Docs
[https://github.com/geo-c/OCT-Core-Docs/tree/master/Installation](https://github.com/geo-c/OCT-Core-Docs/tree/master/Installation)

Go into the downloaded directory and start the application.
Use Flag -d to run as daemon.

'''
$ sudo docker-compose up
'''

Now you have to define the IP address of this container.

Get IP address from service /docker_postgis_1
'''
sudo docker inspect -f '{{.Name}} - {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(sudo docker ps -aq)
'''

Set IP address inside container.
'''
$ sudo docker-compose exec oct bash
$ apt-get install -y nano
$ nano config/db.js
'''

To Update the database count regulary, execute the UpdateCount.sh from crontab. For e.g. every 10 Minutes

To Backup your database execute the backUpDatabase.sh or this code:
'''
$ sudo docker-compose exec postgis pg_dumpall -c -U oct> dump_`date +%d-%m-%Y"_"%H_%M_%S`.sql
'''

To Restore the Ddtabase to a former state use this command:
'''
$ cat dump_name.sql | sudo docker-compose exec -i postgis psql -U oct
'''

**Useful commands for further maintanance:**

Getting inside a docker container(postgis or oct):
'''
$ sudo docker-compose exec postgis bash
'''

Copy files into a container:
'''
$ sudo docker cp /*path*/*to*/*file* "$(sudo docker-compose ps -q oct)":/home/oct/OCT-Core/*path*/*file*
'''


