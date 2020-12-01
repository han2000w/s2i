FROM tomcat:jdk8-adoptopenjdk-openj9

ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN rm -Rf /usr/local/tomcat/webapps/ROOT
ADD han/Lab6A.war /usr/local/tomcat/webapps/ROOT.war
ENV JAVA_OPTS="-Dserver.type=dev"
