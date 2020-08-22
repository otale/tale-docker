FROM docker.io/openjdk:8u121-jdk
WORKDIR /webapp/

EXPOSE 9000
#COPY tale.sh /webapp/
#ENTRYPOINT ["/usr/bin/java",  "-jar",  "/webapp/tale/tale-least.jar"]
ENTRYPOINT ["sh","./tale/tale.sh"]
CMD ["start"]


