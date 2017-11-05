FROM centos:7.4.1708

# Configure proxy

RUN rm /etc/yum.repos.d/*
COPY repo /var/repo
COPY epel-local.repo /etc/yum.repos.d/epel-local.repo

RUN yum-config-manager --disable base/7/x86_64
RUN yum clean all
RUN yum repolist

# Update base CentOS container
RUN yum update -y \
	   && yum install -y wget \
	   && yum install -y unzip \
	   && yum install -y net-tools \
	   && yum install -y tcpdump \
	   && yum install -y git-all \
	   && yum install -y telnet \
	   && yum -y install openssh-clients \
	   && yum clean all
   
RUN groupadd ci 