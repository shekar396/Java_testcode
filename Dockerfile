From amazonlinux As build
 
RUN yum install wget -y && \
    yum install git -y && \
    yum install unzip -y && \
    yum install java-17-amazon-corretto-devel -y
 
RUN wget https://dlcdn.apache.org/maven/maven-3/3.9.16/binaries/apache-maven-3.9.16-bin.zip && \
    unzip apache-maven-3.9.16-bin.zip && \
    mv apache-maven-3.9.16 /opt/maven
 
RUN git clone https://github.com/shekar396/Java_testcode.git /opt/app
 
WORKDIR /opt/app
RUN /opt/maven/bin/mvn package
 
From amazonlinux
 
RUN yum install wget -y && \
    yum install git -y && \
    yum install unzip -y && \
    yum install java-17-amazon-corretto-devel -y
 
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.118/bin/apache-tomcat-9.0.118.zip && \
    unzip apache-tomcat-9.0.118.zip && \
    mv apache-tomcat-9.0.118 /opt/tomcat
 
COPY --from=build /opt/app/target/simple-webapp.war /opt/tomcat/webapps
RUN chmod 755 /opt/tomcat/bin/catalina.sh
ENTRYPOINT ["/opt/tomcat/bin/catalina.sh", "run"]
 
#docker build -t chatbots:1.0
#docker images
#docker ps -a
#docker run --name chatbots -d -p 8080:8080 chatbots:1.0