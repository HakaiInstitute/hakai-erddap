#!/bin/sh
###
# Make the two webapp directories that ERDDAP overlays from content/ writable
# by the tomcat user.
#
# On every startup EDConfig.copyContentImagesToWebApps() copies
#   <content>/images/*   -> webapps/erddap/images/
#   <content>/cptfiles/* -> webapps/erddap/WEB-INF/cptfiles/
# and we bind ./erddap/content over <content>, so our branded erddap2.css,
# favicon.ico, youtube.png and Spectrum.cpt all land on files that already
# exist in the image.
#
# The upstream entrypoint chowns only *directories* and *.sh files under
# webapps/erddap to the tomcat user, so those regular files stay root:root
# 0644. Overwriting one after setpriv throws AccessDeniedException -- and
# File2.copy deletes the destination whenever a copy fails, which succeeds
# because unlink needs write on the parent directory (tomcat-owned), not on
# the file. The shipped Spectrum.cpt is therefore removed rather than
# replaced, and EDMessages aborts low-level startup with
#   "Spectrum" is listed in <palettes>, but there is no file
#   /usr/local/tomcat/webapps/erddap/WEB-INF/cptfiles/Spectrum.cpt
# which takes the whole webapp down. See EDMessages.java:3990.
#
# This ran fine until the image bump to v2.31.1 (84d62be) because the old
# axiom image predates the official erddap/erddap base and ran Tomcat as root.
#
# Runs as root: the entrypoint executes /init.d/* before it drops privileges.
###

set -eu

USER_ID=${TOMCAT_USER_ID:-1000}
GROUP_ID=${TOMCAT_GROUP_ID:-1000}

for dir in "${CATALINA_HOME}/webapps/erddap/images" \
           "${CATALINA_HOME}/webapps/erddap/WEB-INF/cptfiles"; do
  [ -d "$dir" ] || continue
  echo "Chowning $dir to ${USER_ID}:${GROUP_ID} for content/ overlay"
  chown -R "${USER_ID}:${GROUP_ID}" "$dir"
done
