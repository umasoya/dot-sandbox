FROM centos:7

# Create general user
RUN useradd docker
RUN echo 'docker:docker' | chpasswd
RUN echo "docker    ALL=(ALL)   ALL" >> /etc/sudoers

RUN yum -y update; \
        yum -y install sudo; \
        yum clean all;
