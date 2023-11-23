FROM --platform=linux/x86_64 axiom/docker-erddap:2.23-jdk17-openjdk

RUN apt-get update
RUN apt-get install bash

COPY ./erddap/conf/robots.txt /usr/local/tomcat/webapps/ROOT/robots.txt
COPY ./erddap/content /usr/local/tomcat/content/erddap
# COPY ./erddap/data /erddapData
# COPY /tmp/ /usr/local/tomcat/temp/

# COPY ./init.d /init.d
# COPY ./tomcatLogs /usr/local/tomcat/logs

# ADD ./datasets.d /datasets.d
# ADD /mnt/efs/algex /algae_explorer
# ADD ${DATASETS_DIR:-./datasets} /datasets

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 8080
CMD ["catalina.sh", "run"]