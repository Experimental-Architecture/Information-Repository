# Information-Repository
Testing purposes

```

References
http://odewahn.github.io/docker-jumpstart/building-images-with-dockerfiles.html
https://docs.docker.com/engine/reference/run/#name-name
https://www.digitalocean.com/community/tutorials/docker-explained-using-dockerfiles-to-automate-building-of-images
https://stackoverflow.com/questions/1559955/host-xxx-xx-xxx-xxx-is-not-allowed-to-connect-to-this-mysql-server


Docker build images
$ docker build -t "simple_flask:dockerfile" .

Docker run images (+creates containers)
$ docker run --name [image name] -e AUTHOR="[username]" -d -P [repo-name/image-name]

Docker ports (where containers are hosted)
$ docker ports [image name]

Exporting from Docker
$ docker exec -it database-service mysqldump -p -uroot -ppassword db_drupal > drupal.sql


```


Please view the Wiki for this project
https://github.com/Services-Sandbox/Information-Repository/wiki
