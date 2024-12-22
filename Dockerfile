# Use the official Tomcat image with JDK 8
FROM tomcat:9-jdk8

# Set the working directory inside the container
WORKDIR /usr/local/tomcat/webapps/

# Copy the WAR file from the target directory into the Tomcat webapps folder
COPY target/Mock.war ./Mock.war

# Expose the Tomcat default port
EXPOSE 8080

# Start the Tomcat server
CMD ["catalina.sh", "run"]
