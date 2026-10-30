# Thin patch layer over the upstream ERDDAP image.
#
# The upstream image (axiom/docker-erddap -> erddap/erddap -> tomcat:11.0.24-jdk25-temurin-noble)
# ships an Ubuntu 24.04 base that lags behind current security updates. This layer
# applies the outstanding fixes without otherwise altering the image.
#
# Outstanding at time of writing (trivy scan, 2026-10-29):
#   CVE-2026-111497  CVSS 9.8  libbrotli1          1.1.0-2build2        -> 1.1.0-2ubuntu0.1
#   CVE-2026-84782   CVSS 7.4  openssl, libssl3t64 3.0.13-0ubuntu3.12   -> 3.0.13-0ubuntu3.16
#
# Neither is highly reachable here (ERDDAP is pure Java, so libbrotli1 is only
# exercised via the `curl` healthcheck binary, and Tomcat uses JSSE rather than
# OpenSSL for TLS), but both have fixes available and the layer is cheap.
#
# DELETE THIS FILE and revert docker-compose.yml to a plain `image:` once the
# upstream image rebuilds on a patched base.

ARG ERDDAP_IMAGE=axiom/docker-erddap:v2.31.1
FROM ${ERDDAP_IMAGE}

# Upgrade only the affected packages rather than a blanket `apt-get upgrade`, so
# this layer stays small and does not silently pull in unrelated version churn.
RUN apt-get update \
    && apt-get install -y --only-upgrade --no-install-recommends \
        libbrotli1 \
        openssl \
        libssl3t64 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
