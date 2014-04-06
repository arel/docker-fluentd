#
# Fluentd Dockerfile
#
# https://github.com/arel/docker-fluentd
#
# Pull base image.
#
# For configuring the host to best run fluentd, see:
#   http://docs.fluentd.org/articles/before-install
#
# Base image.
FROM dockerfile/java

MAINTAINER Arel Cordero <acordero@gmail.com>

# Install Fluentd.
#   see: http://docs.fluentd.org/articles/install-by-deb
RUN curl -L http://toolbelt.treasuredata.com/sh/install-ubuntu-precise.sh | sh

ENTRYPOINT ["td-agent"]

CMD ["-v"]
