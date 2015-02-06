#
# Ubuntu Desktop (LXDE) Dockerfile
#
# https://github.com/dockerfile/ubuntu-desktop
#

# Pull base image.
FROM dockerfile/ubuntu

# Install LXDE and VNC server.
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y lxde-core lxterminal tightvncserver firefox

# Define mountable directories.
VOLUME ["/data"]

ENV USER root

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["vncserver :1 -geometry 1280x800 -depth 24 && bash"]

# Expose ports.
EXPOSE 5901
