FROM  axiom/docker-erddap:2.23-jdk17-openjdk


ADD ./erddap/conf/robots.txt /usr/local/tomcat/webapps/ROOT/robots.txt
ADD ./erddap/content /usr/local/tomcat/content/erddap
ADD ./erddap/data /erddapData
ADD ${DATASETS_DIR:-./datasets} /datasets
ADD /tmp/ /usr/local/tomcat/temp/
ADD ./datasets.d /datasets.d
ADD ./init.d /init.d
ADD ./tomcatLogs /usr/local/tomcat/logs
ADD /mnt/efs/algex /algae_explorer

EXPOSE ${HOST_PORT}