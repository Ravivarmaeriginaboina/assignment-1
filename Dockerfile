FROM tomcat:8.0

MAINTAINER saikrishna.ura@gmail.com

COPY ./food-app/ /usr/local/tomcat/webapps/swiggyy/

COPY ./tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

COPY ./context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml

WORKDIR /usr/local/tomcat/webapps

EXPOSE 8080

CMD ["catalina.sh", "run"]
