#!/bin/bash

docker ps

docker kill $(docker ps -q)

docker rm drupal-service
docker rm database-service
docker rm query-tool-service
docker rm solr-service

docker build -t drupal-service /home/cyu/Documents/drupal-service
docker build -t database-service /home/cyu/Documents/database-service
docker build -t query-tool-service /home/cyu/Documents/query-tool-service
docker build -t solr-service /home/cyu/Documents/solr-service

docker run --name drupal-service -d -P drupal-service
docker run --name database-service -d -P database-service
docker run --name query-tool-service -d -P query-tool-service
docker run --name solr-service -d P solr-service
