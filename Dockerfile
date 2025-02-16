FROM --platform=${TARGETPLATFORM:-linux/amd64} alibaba-cloud-linux-3-registry.cn-hangzhou.cr.aliyuncs.com/alinux3/alinux3:3.9

# 设置上海时区
ENV TZ='Asia/Shanghai'

RUN yum update -y

# ps, top, uptime, w, free
# https://developer.aliyun.com/article/236238
RUN yum install -y procps-ng

# ping
# https://blog.51cto.com/u_16248677/7384598
RUN yum install -y iputils

# ifconfig, netstat, route, arp
# https://www.cnblogs.com/RidingWind/p/13132279.html
RUN yum install -y net-tools

# zip, tar, xz
RUN yum install -y zip
RUN yum install -y tar xz

# dumb-init
# https://github.com/Yelp/dumb-init
RUN yum install -y --nogpgcheck dumb-init

# python3
#RUN yum install -y python3
