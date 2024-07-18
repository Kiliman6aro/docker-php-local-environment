FROM ubuntu:22.04

RUN apt-get update && apt-get install -y dnsmasq

EXPOSE 53/udp

CMD ["dnsmasq", "-k"]