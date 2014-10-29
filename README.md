docker-technology-scripts
=========================

This is the home of the scripts that the LAMB team is using to install different technology stacks
onto Docker images. This allows us to compose technology onto images instead of having to use the 
FROM Dockerfile directive and inherit from other images.

Example Dockerfile where this is used:

FROM cloudfoundry/lamb-ci-base

ADD https://raw.githubusercontent.com/pivotal-cf-experimental/docker-technology-scripts/master/install_ruby2-1-2.sh /tmp/install_ruby.sh
RUN chmod 755 /tmp/install_ruby.sh
RUN /tmp/install_ruby.sh

This is still an idea in motion. If you have questions or comments, please let us know.