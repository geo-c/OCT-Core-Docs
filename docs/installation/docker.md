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
$ docker-compose up
'''

Now you have to define the IP address of this container.

Get IP address from service /docker_postgis_1
'''
docker inspect -f '{{.Name}} - {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $(docker ps -aq)
'''

Set IP address inside container.
'''
$ docker-compose exec oct bash
$ apt-get install -y nano
$ nano config/db.js
'''