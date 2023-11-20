FROM  axiom/docker-erddap:2.23-jdk17-openjdk


COPY ./erddap/conf/robots.txt /usr/local/tomcat/webapps/ROOT/robots.txt
COPY ./erddap/content /usr/local/tomcat/content/erddap
COPY ./erddap/data /erddapData
COPY /tmp/ /usr/local/tomcat/temp/
COPY ./datasets.d /datasets.d
COPY ./init.d /init.d
COPY ./tomcatLogs /usr/local/tomcat/logs

ADD /mnt/efs/algex /algae_explorer
ADD ${DATASETS_DIR:-./datasets} /datasets

EXPOSE ${HOST_PORT}