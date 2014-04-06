#
# Fluentd Dockerfile
#
# Pull base image.
#
# For configuring the host to best run fluentd, see:
#   http://docs.fluentd.org/articles/before-install
#
# Base image.
FROM dockerfile/java

# Install Fluentd.
#   see: http://docs.fluentd.org/articles/install-by-deb
RUN curl -L http://toolbelt.treasuredata.com/sh/install-ubuntu-precise.sh | sh

ENTRYPOINT ["td-agent"]

CMD ["-v"]
