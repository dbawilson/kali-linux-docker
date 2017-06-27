FROM kalilinux/kali-linux-docker
MAINTAINER steev@kali.org

RUN echo "deb http://http.kali.org/kali kali-rolling main contrib non-free" > /etc/apt/sources.list && \
echo "deb-src http://http.kali.org/kali kali-rolling main contrib non-free" >> /etc/apt/sources.li
RUN apt-get -y update
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y install kali-linux
RUN apt-get -y install kali-linux-wireless
RUN apt-get -y install kali-linux-top10
RUN apt-get -y update && apt-get -y dist-upgrade && apt-get clean

CMD ["/bin/bash"]
