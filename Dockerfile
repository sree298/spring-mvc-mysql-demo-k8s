# Use Tomcat 9 with JDK 11
FROM tomcat:9.0-jdk11

# Optional: remove default ROOT app (Tomcat welcome page)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file into Tomcat webapps
# WAR name must match what Maven builds (finalName in pom.xml)
COPY target/spring-mvc-mysql-demo-docker.war /usr/local/tomcat/webapps/spring-mvc-mysql-demo-docker.war

# Expose Tomcat port
EXPOSE 8080


