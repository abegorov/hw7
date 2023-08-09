FROM eclipse-temurin:8-jre-alpine
RUN --mount=type=tmpfs,target=/tmp \
    wget -O /tmp/tomcat.tar.gz \
        https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.78/bin/apache-tomcat-9.0.78.tar.gz && \
    mkdir -p /opt/tomcat && \
    tar xf /tmp/tomcat.tar.gz --strip-components 1 --directory /opt/tomcat && \
    rm /opt/tomcat/webapps/* -rf
EXPOSE 8080
CMD [ "/opt/tomcat/bin/catalina.sh", "run" ]
