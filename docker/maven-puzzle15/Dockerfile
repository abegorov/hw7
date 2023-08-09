FROM alpine:3.18
WORKDIR /build
RUN --mount=type=cache,target=/var/cache/apk,sharing=locked \
    apk update && \
    apk add openjdk8 && \
    apk add maven && \
    apk add git && \
    mkdir -p /opt/tomcat/webapps
COPY --link --chmod=755 build.sh build.sh
CMD [ "./build.sh" ]
