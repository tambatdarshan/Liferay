FROM liferay/dxp:7.2.10-dxp-7

USER root 

WORKDIR /opt/liferay 

#Example setting static configurations in Dockerfile 
COPY files/tomcat/bin/setenv.sh /opt/liferay/tomcat/bin/setenv.sh
COPY files/tomcat/conf/logging.properties /opt/liferay/tomcat/conf/logging.properties
COPY files/tomcat/lib/ext/ojdbc10.jar /opt/liferay/tomcat/lib/ext/ojdbc10.jar

#Required in order to run on openshift 
RUN chgrp -R 0 /opt/liferay && \
    chmod -R g=u /opt/liferay

USER 1001




