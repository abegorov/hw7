FROM alpine:3.18
WORKDIR /tmp/build
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.78/bin/apache-tomcat-9.0.78.tar.gz tomcat.tar.gz
RUN --mount=type=cache,target=/var/cache/apk,sharing=locked \
    apk update && \
    apk add openjdk8-jre-base && \
    mkdir -p /opt/tomcat && \
    tar xf tomcat.tar.gz --strip-components 1 --directory /opt/tomcat && \
    rm /opt/tomcat/webapps/* -rf
EXPOSE 8080
CMD [ "/opt/tomcat/bin/catalina.sh", "run" ]
