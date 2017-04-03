FROM ubuntu:16.04

WORKDIR /tmp

RUN apt-get update && apt-get install -y wget zip sqlite3 
RUN apt-get update && apt-get install -y --no-install-recommends openjdk-8-jdk
RUN wget http://7xls9k.dl1.z0.glb.clouddn.com/tale.zip && unzip -o tale.zip

ENV TALE_HOME /var/tale_home
ENV TALE_SLAVE_AGENT_PORT 9000

VOLUME /var/tale_home

EXPOSE 9000

CMD ["/usr/bin/java",  "-jar",  "/tmp/tale/tale-1.2.11.jar"]
