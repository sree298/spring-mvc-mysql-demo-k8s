# Use Tomcat 9 with JDK 11
FROM tomcat:9.0-jdk11

# Clean default webapps so only our WAR is deployed
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat webapps
# WAR name must match what Maven builds (finalName in pom.xml)
COPY target/spring-mvc-mysql-demo-k8s.war /usr/local/tomcat/webapps/spring-mvc-mysql-demo-k8s.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]


