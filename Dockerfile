FROM centos:7.4.1708

# Configure proxy

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