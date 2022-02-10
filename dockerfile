FROM centos:8
LABEL maintainer=”bio4azar6”
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum update -y
RUN yum install vim-enhanced -y
RUN yum install -y nano
RUN yum install -y epel-release
RUN yum install -y htop
