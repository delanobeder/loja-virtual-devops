FROM tomcat:7.0-jdk8

LABEL maintainer="auri@ufscar.br, g4briel.4lves@gmail.com"

ADD ./docker-img/catalina.sh /usr/local/tomcat/bin/
ADD ./docker-img/.keystore /usr/local/tomcat/conf/
ADD ./docker-img/server.xml /usr/local/tomcat/conf/
ADD ./docker-img/context.xml /usr/local/tomcat/conf/
ADD ./combined/target/devopsnapratica.war /usr/local/tomcat/webapps/

EXPOSE 8080

RUN chmod a+x /usr/local/tomcat/bin/catalina.sh

CMD ["catalina.sh", "run"]