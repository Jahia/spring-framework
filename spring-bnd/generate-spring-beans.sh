#!/usr/bin/env bash
source ../gradle.properties
cp ~/.m2/repository/org/springframework/spring-beans/${version}/spring-beans-${version}.jar .

cp ~/.m2/repository/org/springframework/spring-beans/${version}/spring-beans-${version}.pom .

sed -i .bak s/${version}/${version}_OSGI/g *.pom

bnd spring-beans.bnd

jar xf spring-beans-${version}.jar META-INF ; rm META-INF/MANIFEST.MF ; jar uf spring-beans-${version}_OSGI.jar META-INF/* ; rm -Rf META-INF

mvn install:install-file -Dfile=spring-beans-${version}_OSGI.jar -DpomFile=spring-beans-${version}.pom


# Uncomment the following line for release
#mvn deploy:deploy-file -DrepositoryId=jahia-releases -Durl=https://devtools.jahia.com/nexus/content/repositories/thirdparty-releases/ -Dfile=spring-beans-${version}_OSGI.jar -DpomFile=spring-beans-${version}.pom

rm *.jar *.pom *.bak
