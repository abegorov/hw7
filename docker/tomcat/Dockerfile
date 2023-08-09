FROM alpine:3.18
RUN --mount=type=cache,target=/var/cache/apk,sharing=locked \
    --mount=type=tmpfs,target=/tmp \
    apk update && \
    apk add openjdk8-jre-base && \
    wget -O /tmp/tomcat.tar.gz \
        https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.78/bin/apache-tomcat-9.0.78.tar.gz && \
    mkdir -p /opt/tomcat && \
    tar xf /tmp/tomcat.tar.gz --strip-components 1 --directory /opt/tomcat && \
    rm /opt/tomcat/webapps/* -rf
EXPOSE 8080
WORKDIR /opt/tomcat
CMD [ "/opt/tomcat/bin/catalina.sh", "run" ]
