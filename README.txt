Dockerfile to build a docker image suitable for a single-node Cassandra for dev

To persist data, when running this image, have docker bind mount
/var/lib/cassandra inside the container to some static location on the host.

Loosely based on some of the docker images at http://github.com/khanio/docker-images
