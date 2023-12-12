FROM --platform=linux/x86_64 axiom/docker-erddap:2.23-jdk17-openjdk

RUN apt-get update && apt-get install dos2unix

COPY ./erddap/conf/robots.txt /usr/local/tomcat/webapps/ROOT/robots.txt
COPY ./erddap/content /usr/local/tomcat/content/erddap
# COPY ./erddap/data /erddapData
# COPY /tmp/ /usr/local/tomcat/temp/

COPY ./init.d /init.d
RUN chmod a+x /init.d/*.sh
WORKDIR /init.d
RUN dos2unix $(ls *.sh) 
# COPY ./tomcatLogs /usr/local/tomcat/logs

COPY ./datasets.d /datasets.d
# ADD /mnt/efs/algex /algae_explorer
# ADD ${DATASETS_DIR:-./datasets} /datasets

ENTRYPOINT ["/entrypoint.sh"]

#healthcheck to check ERDDAP landing page. the check provides the added bonus
#of triggering ERDDAP initialization before the first user visit
HEALTHCHECK --interval=10s --timeout=10s --start-period=10s \  
    CMD curl --fail http://localhost:8080/erddap/index.html || exit 1     

EXPOSE 8080
CMD ["catalina.sh", "run"]