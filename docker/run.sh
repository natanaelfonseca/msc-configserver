#!/bin/sh

echo "********************************************************"
echo "Waiting for the eureka server to start on port 8761"
echo "********************************************************"
while ! `nc -z servicediscovery 8761`; do sleep 3; done
echo "******* Eureka Server has started"

java -jar /usr/local/@project.artifactId@/@project.build.finalName@.jar