FROM centos:7.3.1611

# Configure proxy

RUN rm /etc/yum.repos.d/*
COPY repo /var/repo
COPY epel-local.repo /etc/yum.repos.d/epel-local.repo

RUN set -e &&\
    yum-config-manager --disable base/7/x86_64 &&\
    yum clean all &&\
    yum repolist

# Update base CentOS container
RUN set -e &&\
    yum update -y \
	   && yum install -y wget \
	   && yum install -y unzip \
	   && yum install -y net-tools \
	   && yum install -y tcpdump \
	   && yum install -y git-all \
	   && yum install -y telnet \
	   && yum -y install openssh-clients \
	   && yum clean all
   
RUN set -e &&\
    groupadd ci 