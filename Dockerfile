# docker-dnsmasq
# VERSION 0.0.1

FROM ubuntu:14.04
MAINTAINER jiasir <jiasir@icloud.com>

COPY banner_add_hosts /etc/

RUN apt-get update && apt-get install -y dnsmasq
RUN echo "no-hosts" >> /etc/dnsmasq.conf
RUN echo "addn-hosts=/etc/banner_add_hosts" >> /etc/dnsmasq.conf
RUN echo "user=root" >> /etc/dnsmasq.conf
EXPOSE 53
CMD ["dnsmasq", "-d", "-C", "/etc/dnsmasq.conf"]
