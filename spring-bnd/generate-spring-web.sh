#!/usr/bin/env bash
source ../gradle.properties
cp ~/.m2/repository/org/springframework/spring-web/${version}/spring-web-${version}.jar .

cp ~/.m2/repository/org/springframework/spring-web/${version}/spring-web-${version}.pom .

sed -i .bak s/${version}/${version}_OSGI2/g *.pom

bnd spring-web.bnd

jar xf spring-web-${version}.jar META-INF ; rm META-INF/MANIFEST.MF ; jar uf spring-web-${version}_OSGI2.jar META-INF/* ; rm -Rf META-INF

mvn install:install-file -Dfile=spring-web-${version}_OSGI2.jar -DpomFile=spring-web-${version}.pom


# Uncomment the following line for release
#mvn deploy:deploy-file -DrepositoryId=jahia-releases -Durl=https://devtools.jahia.com/nexus/content/repositories/thirdparty-releases/ -Dfile=spring-beans-${version}_OSGI.jar -DpomFile=spring-beans-${version}.pom

rm *.jar *.pom *.bak
