#!/bin/sh

git clone https://github.com/venkaDaria/puzzle15.git
cd puzzle15
sed -i 's@</modelVersion>@</modelVersion>\n    <packaging>war</packaging>@' pom.xml
rm target -rf
rm target_heroku -rf
mvn clean
mvn package
cp target/Puzzle15-1.0-SNAPSHOT.war /opt/tomcat/webapps/puzzle15.war
