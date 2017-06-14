FROM kunitaya/anaconda3
MAINTAINER kunitaya

ENV LANG=ja_JP.UTF-8
ENV LC_ALL=C

# update yum
RUN yum makecache fast && \
    yum update -y

# mysql command for development
RUN yum -y install mariadb mariadb-devel

# clear
RUN yum clean all

CMD ["/sbin/init"]
