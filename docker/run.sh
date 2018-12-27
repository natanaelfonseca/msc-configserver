#!/bin/sh

echo "********************************************************"
echo "Esperando pelo servidor eureka na porta $EUREKASERVER_PORT"
echo "********************************************************"
while ! `nc -z eurekaserver  $EUREKASERVER_PORT`; do sleep 3; done
echo "******* Servidor eureka iniciou"

echo "********************************************************"
echo "Iniciando Servidor de Configuracao"
echo "********************************************************"

java -Djava.security.egd=file:/dev/./urandom -Dserver.port=$PORT  \
     -Deureka.client.serviceUrl.defaultZone=$EUREKA_DEFAULT_ZONE  \
     -Dspring.profiles.active=$PROFILE                            \
     -jar /usr/local/@project.artifactId@/@project.build.finalName@.jar