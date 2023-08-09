FROM eclipse-temurin:8-jre-alpine
RUN --mount=type=cache,target=/var/cache/apk,sharing=locked \
    apk update && \
    apk add maven && \
    apk add git && \
    mkdir -p /opt/tomcat/webapps
COPY --link <<-EOT /usr/local/bin/start-build.sh
    #!/bin/sh

    git clone https://github.com/venkaDaria/puzzle15.git
    cd puzzle15
    sed -i 's@</modelVersion>@</modelVersion>\n    <packaging>war</packaging>@' pom.xml
    cp target/Puzzle15-1.0-SNAPSHOT.war /opt/tomcat/webapps/puzzle15.war
EOT
CMD [ "/bin/sh", "/usr/local/bin/start-build.sh" ]
