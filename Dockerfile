FROM kalilinux/kali-linux-docker
MAINTAINER steev@kali.org

RUN echo "deb http://repo.kali.org/kali kali-rolling main non-free contrib " > /etc/apt/sources.list && \
echo " deb http://kali.cs.nctu.edu.tw/ /wheezy main contrib non-free " >> /etc/apt/sources.lis
RUN echo "deb http://kali.cs.nctu.edu.tw/kali kali-dev main contrib non-free " >> /etc/apt/sources.list
RUN echo "deb http://kali.cs.nctu.edu.tw/kali kali-dev main/debian-installer" >> /etc/apt/sources.list
RUN echo "deb-src http://kali.cs.nctu.edu.tw/kali kali-dev main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb http://kali.cs.nctu.edu.tw/kali kali main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb http://kali.cs.nctu.edu.tw/kali kali main/debian-installer" >> /etc/apt/sources.list
RUN echo "deb-src http://kali.cs.nctu.edu.tw/kali kali main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb http://kali.cs.nctu.edu.tw/kali-security kali/updates main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb-src http://kali.cs.nctu.edu.tw/kali-security kali/updates main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb http://kali.cs.nctu.edu.tw/kali kali-bleeding-edge main" >> /etc/apt/sources.list
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -y install kali-linux
RUN apt-get -y install kali-linux-wireless
RUN apt-get -y install kali-linux-top10
RUN apt-get -y update && apt-get -y dist-upgrade && apt-get clean

CMD ["/bin/bash"]
