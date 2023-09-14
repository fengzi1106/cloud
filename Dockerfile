FROM daocloud.io/library/tomcat:8.0.45
RUN rm -rf /usr/local/tomcat/webapps/*
ADD ./target/easy-springmvc-maven.war /usr/local/tomcat/webapps/
ENTRYPOINT ["/usr/local/tomcat/bin/catalina.sh","run"]
