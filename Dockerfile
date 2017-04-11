FROM docker.io/openjdk:8u121-jdk

ENV TALE_HOME /var/tale_home
ENV TALE_SLAVE_AGENT_PORT 9000

EXPOSE 9000

#CMD ["/usr/bin/java",  "-jar",  "/var/tale_home/tale-1.2.11.jar"]

#copy run.sh to /run.sh
COPY run.sh /run.sh
RUN chmod 700 /run.sh
ENTRYPOINT ["/run.sh"]
