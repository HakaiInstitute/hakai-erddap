FROM --platform=linux/x86_64 axiom/docker-erddap:2.23-jdk17-openjdk

# Install related packages
RUN apt-get update 
RUN apt-get install -y git python3-pip
# do not cache erddap-deploy
ADD "https://www.random.org/cgi-bin/randbyte?nbytes=10&format=h" skipcache
RUN pip install git+https://github.com/HakaiInstitute/erddap-deploy.git@v1.2.3

# Copy ERDDAP configuration files
COPY ./erddap/conf/robots.txt /usr/local/tomcat/webapps/ROOT/robots.txt
COPY ./erddap/content /usr/local/tomcat/content/erddap


# Copy repo locally and generate ERDDAP datasets.xml
ARG ERDDAP_DATASETS_REPO_DIR=${ERDDAP_DATASETS_REPO_DIR:-/datasets-repo}
COPY . ${ERDDAP_DATASETS_REPO_DIR}
COPY init.d /init.d

ENTRYPOINT ["/entrypoint.sh"]

#healthcheck to check ERDDAP landing page. the check provides the added bonus
#of triggering ERDDAP initialization before the first user visit
HEALTHCHECK --interval=10s --timeout=10s --start-period=10s \  
    CMD curl --fail http://localhost:8080/erddap/index.html || exit 1     

EXPOSE 8080
CMD ["catalina.sh", "run"]