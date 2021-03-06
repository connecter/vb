FROM java:openjdk-7-jre
MAINTAINER Jan Vincent Liwanag <jvliwanag@gmail.com>

ADD dist/linux/jitsi-videobridge-linux-x64-build.SVN.zip /jvb.zip
RUN unzip /jvb.zip && \
	mv /jitsi-videobridge-linux-x64* /opt/jitsi-videobridge && \
	rm /jvb.zip

ADD tools/start.sh /start.sh

ENTRYPOINT ["/start.sh"]
