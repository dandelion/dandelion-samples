FROM dandelion/sample-tomcat:7.0.62-jdk7
MAINTAINER Thibault Duchateau <thibault.duchateau@gmail.com>

ADD . /home/dandelion

# Build the sample application
# Deploy it to Tomcat
# Remove sources to make the image thinner
RUN cd /home/dandelion && \
    mvn package && \
    cp -r target/datatables-thymeleaf-starter /usr/local/tomcat/webapps/ && \
    rm -rf /home/dandelion
