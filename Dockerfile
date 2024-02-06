FROM --platform=linux/x86_64 axiom/docker-erddap:2.23-jdk17-openjdk

# Install related packages
RUN apt-get update 
RUN apt-get install -y git python3-pip
ADD "https://www.random.org/cgi-bin/randbyte?nbytes=10&format=h" skipcache
RUN pip install git+https://github.com/HakaiInstitute/erddap-deploy.git@main

# Copy ERDDAP configuration files
COPY ./erddap/conf/robots.txt /usr/local/tomcat/webapps/ROOT/robots.txt
COPY ./erddap/content /usr/local/tomcat/content/erddap
# COPY ./erddap/data /erddapData
# COPY /tmp/ /usr/local/tomcat/temp/
# COPY ./tomcatLogs /usr/local/tomcat/logs

# Copy repo locally and generate ERDDAP datasets.xml
COPY . /datasets-repo
ENV ERDDAP_DATASETS_REPO_DIR=/datasets-repo
ENV ERDDAP_DATASETS_XML=/datasets-repo/datasets.d/**/*.xml

# Deploy ERDDAP datasets.xml
ENV ERDDAP_DATASETS_XML=$ERDDAP_DATASETS_XML
ENV ERDDAP_RECURSIVE=$ERDDAP_RECURSIVE
RUN erddap_deploy test
RUN erddap_deploy sync

# Mount data volumes
# ADD /mnt/efs/algex /algae_explorer
# ADD ${DATASETS_DIR:-./datasets} /datasets

ENTRYPOINT ["/entrypoint.sh"]

#healthcheck to check ERDDAP landing page. the check provides the added bonus
#of triggering ERDDAP initialization before the first user visit
HEALTHCHECK --interval=10s --timeout=10s --start-period=10s \  
    CMD curl --fail http://localhost:8080/erddap/index.html || exit 1     

EXPOSE 8080
CMD ["catalina.sh", "run"]