cp ~/.m2/repository/org/springframework/spring-aop/3.2.18.RELEASE/spring-aop-3.2.18.RELEASE.jar .
cp ~/.m2/repository/org/springframework/spring-aspects/3.2.18.RELEASE/spring-aspects-3.2.18.RELEASE.jar .
cp ~/.m2/repository/org/springframework/spring-tx/3.2.18.RELEASE/spring-tx-3.2.18.RELEASE.jar .
cp ~/.m2/repository/org/springframework/spring-orm/3.2.18.RELEASE/spring-orm-3.2.18.RELEASE.jar .
cp ~/.m2/repository/org/springframework/spring-beans/3.2.18.RELEASE/spring-beans-3.2.18.RELEASE.jar .
cp ~/.m2/repository/org/springframework/spring-core/3.2.18.RELEASE/spring-core-3.2.18.RELEASE.jar .
cp ~/.m2/repository/org/springframework/spring-web/3.2.18.RELEASE/spring-web-3.2.18.RELEASE.jar .
cp ~/.m2/repository/org/springframework/spring-webmvc/3.2.18.RELEASE/spring-webmvc-3.2.18.RELEASE.jar .
cp ~/.m2/repository/org/springframework/spring-context/3.2.18.RELEASE/spring-context-3.2.18.RELEASE.jar .
cp ~/.m2/repository/org/springframework/spring-context-support/3.2.18.RELEASE/spring-context-support-3.2.18.RELEASE.jar .
cp ~/.m2/repository/org/springframework/spring-jdbc/3.2.18.RELEASE/spring-jdbc-3.2.18.RELEASE.jar .
cp ~/.m2/repository/org/springframework/spring-aspects/3.2.18.RELEASE/spring-aspects-3.2.18.RELEASE.jar .
cp ~/.m2/repository/org/springframework/spring-test/3.2.18.RELEASE/spring-test-3.2.18.RELEASE.jar .
cp ~/.m2/repository/org/springframework/spring-expression/3.2.18.RELEASE/spring-expression-3.2.18.RELEASE.jar .
cp ~/.m2/repository/org/springframework/webflow/spring-webflow/2.4.6.RELEASE/spring-webflow-2.4.6.RELEASE.jar .

cp ~/.m2/repository/org/springframework/spring-aop/3.2.18.RELEASE/spring-aop-3.2.18.RELEASE.pom .
cp ~/.m2/repository/org/springframework/spring-aspects/3.2.18.RELEASE/spring-aspects-3.2.18.RELEASE.pom .
cp ~/.m2/repository/org/springframework/spring-tx/3.2.18.RELEASE/spring-tx-3.2.18.RELEASE.pom .
cp ~/.m2/repository/org/springframework/spring-orm/3.2.18.RELEASE/spring-orm-3.2.18.RELEASE.pom .
cp ~/.m2/repository/org/springframework/spring-beans/3.2.18.RELEASE/spring-beans-3.2.18.RELEASE.pom .
cp ~/.m2/repository/org/springframework/spring-core/3.2.18.RELEASE/spring-core-3.2.18.RELEASE.pom .
cp ~/.m2/repository/org/springframework/spring-web/3.2.18.RELEASE/spring-web-3.2.18.RELEASE.pom .
cp ~/.m2/repository/org/springframework/spring-webmvc/3.2.18.RELEASE/spring-webmvc-3.2.18.RELEASE.pom .
cp ~/.m2/repository/org/springframework/spring-context/3.2.18.RELEASE/spring-context-3.2.18.RELEASE.pom .
cp ~/.m2/repository/org/springframework/spring-context-support/3.2.18.RELEASE/spring-context-support-3.2.18.RELEASE.pom .
cp ~/.m2/repository/org/springframework/spring-jdbc/3.2.18.RELEASE/spring-jdbc-3.2.18.RELEASE.pom .
cp ~/.m2/repository/org/springframework/spring-aspects/3.2.18.RELEASE/spring-aspects-3.2.18.RELEASE.pom .
cp ~/.m2/repository/org/springframework/spring-test/3.2.18.RELEASE/spring-test-3.2.18.RELEASE.pom .
cp ~/.m2/repository/org/springframework/spring-expression/3.2.18.RELEASE/spring-expression-3.2.18.RELEASE.pom .
cp ~/.m2/repository/org/springframework/webflow/spring-webflow/2.4.6.RELEASE/spring-webflow-2.4.6.RELEASE.pom .

sed -i .bak s/3.2.18.RELEASE/3.2.18.RELEASE_OSGI2/g *.pom
sed -i .bak s/2.4.6.RELEASE/2.4.6.RELEASE_OSGI2/g *.pom

bnd *.bnd

jar xf spring-aop-3.2.18.RELEASE.jar META-INF ; rm META-INF/MANIFEST.MF ; jar uf spring-aop-3.2.18.RELEASE_OSGI2.jar META-INF/* ; rm -Rf META-INF
jar xf spring-aspects-3.2.18.RELEASE.jar META-INF ; rm META-INF/MANIFEST.MF ; jar uf spring-aspects-3.2.18.RELEASE_OSGI2.jar META-INF/* ; rm -Rf META-INF
jar xf spring-tx-3.2.18.RELEASE.jar META-INF ; rm META-INF/MANIFEST.MF ; jar uf spring-tx-3.2.18.RELEASE_OSGI2.jar META-INF/* ; rm -Rf META-INF
jar xf spring-beans-3.2.18.RELEASE.jar META-INF ; rm META-INF/MANIFEST.MF ; jar uf spring-beans-3.2.18.RELEASE_OSGI2.jar META-INF/* ; rm -Rf META-INF
jar xf spring-core-3.2.18.RELEASE.jar META-INF ; rm META-INF/MANIFEST.MF ; jar uf spring-core-3.2.18.RELEASE_OSGI2.jar META-INF/* ; rm -Rf META-INF
jar xf spring-web-3.2.18.RELEASE.jar META-INF ; rm META-INF/MANIFEST.MF ; jar uf spring-web-3.2.18.RELEASE_OSGI2.jar META-INF/* ; rm -Rf META-INF
jar xf spring-webmvc-3.2.18.RELEASE.jar META-INF ; rm META-INF/MANIFEST.MF ; jar uf spring-webmvc-3.2.18.RELEASE_OSGI2.jar META-INF/* ; rm -Rf META-INF
jar xf spring-context-3.2.18.RELEASE.jar META-INF ; rm META-INF/MANIFEST.MF ; jar uf spring-context-3.2.18.RELEASE_OSGI2.jar META-INF/* ; rm -Rf META-INF
jar xf spring-context-support-3.2.18.RELEASE.jar META-INF ; rm META-INF/MANIFEST.MF ; jar uf spring-context-support-3.2.18.RELEASE_OSGI2.jar META-INF/* ; rm -Rf META-INF
jar xf spring-jdbc-3.2.18.RELEASE.jar META-INF ; rm META-INF/MANIFEST.MF ; jar uf spring-jdbc-3.2.18.RELEASE_OSGI2.jar META-INF/* ; rm -Rf META-INF
jar xf spring-aspects-3.2.18.RELEASE.jar META-INF ; rm META-INF/MANIFEST.MF ; jar uf spring-aspects-3.2.18.RELEASE_OSGI2.jar META-INF/* ; rm -Rf META-INF
jar xf spring-test-3.2.18.RELEASE.jar META-INF ; rm META-INF/MANIFEST.MF ; jar uf spring-test-3.2.18.RELEASE_OSGI2.jar META-INF/* ; rm -Rf META-INF
jar xf spring-expression-3.2.18.RELEASE.jar META-INF ; rm META-INF/MANIFEST.MF ; jar uf spring-expression-3.2.18.RELEASE_OSGI2.jar META-INF/* ; rm -Rf META-INF
jar xf spring-webflow-2.4.6.RELEASE.jar META-INF ; rm META-INF/MANIFEST.MF ; jar uf spring-webflow-2.4.6.RELEASE_OSGI2.jar META-INF/* ; rm -Rf META-INF

mvn install:install-file -Dfile=spring-aop-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-aop-3.2.18.RELEASE.pom
mvn install:install-file -Dfile=spring-aspects-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-aspects-3.2.18.RELEASE.pom
mvn install:install-file -Dfile=spring-tx-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-tx-3.2.18.RELEASE.pom
mvn install:install-file -Dfile=spring-orm-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-orm-3.2.18.RELEASE.pom
mvn install:install-file -Dfile=spring-beans-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-beans-3.2.18.RELEASE.pom
mvn install:install-file -Dfile=spring-core-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-core-3.2.18.RELEASE.pom
mvn install:install-file -Dfile=spring-web-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-web-3.2.18.RELEASE.pom
mvn install:install-file -Dfile=spring-webmvc-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-webmvc-3.2.18.RELEASE.pom
mvn install:install-file -Dfile=spring-context-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-context-3.2.18.RELEASE.pom
mvn install:install-file -Dfile=spring-context-support-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-context-support-3.2.18.RELEASE.pom
mvn install:install-file -Dfile=spring-jdbc-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-jdbc-3.2.18.RELEASE.pom
mvn install:install-file -Dfile=spring-aspects-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-aspects-3.2.18.RELEASE.pom
mvn install:install-file -Dfile=spring-test-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-test-3.2.18.RELEASE.pom
mvn install:install-file -Dfile=spring-expression-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-expression-3.2.18.RELEASE.pom
mvn install:install-file -Dfile=spring-webflow-2.4.6.RELEASE_OSGI2.jar -DpomFile=spring-webflow-2.4.6.RELEASE.pom


# mvn deploy:deploy-file -DrepositoryId=jahia-releases -Durl=https://devtools.jahia.com/nexus/content/repositories/thirdparty-releases/ -Dfile=spring-aop-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-aop-3.2.18.RELEASE.pom
# mvn deploy:deploy-file -DrepositoryId=jahia-releases -Durl=https://devtools.jahia.com/nexus/content/repositories/thirdparty-releases/ -Dfile=spring-aspects-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-aspects-3.2.18.RELEASE.pom
# mvn deploy:deploy-file -DrepositoryId=jahia-releases -Durl=https://devtools.jahia.com/nexus/content/repositories/thirdparty-releases/ -Dfile=spring-tx-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-tx-3.2.18.RELEASE.pom
# mvn deploy:deploy-file -DrepositoryId=jahia-releases -Durl=https://devtools.jahia.com/nexus/content/repositories/thirdparty-releases/ -Dfile=spring-orm-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-orm-3.2.18.RELEASE.pom
# mvn deploy:deploy-file -DrepositoryId=jahia-releases -Durl=https://devtools.jahia.com/nexus/content/repositories/thirdparty-releases/ -Dfile=spring-beans-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-beans-3.2.18.RELEASE.pom
# mvn deploy:deploy-file -DrepositoryId=jahia-releases -Durl=https://devtools.jahia.com/nexus/content/repositories/thirdparty-releases/ -Dfile=spring-core-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-core-3.2.18.RELEASE.pom
# mvn deploy:deploy-file -DrepositoryId=jahia-releases -Durl=https://devtools.jahia.com/nexus/content/repositories/thirdparty-releases/ -Dfile=spring-web-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-web-3.2.18.RELEASE.pom
# mvn deploy:deploy-file -DrepositoryId=jahia-releases -Durl=https://devtools.jahia.com/nexus/content/repositories/thirdparty-releases/ -Dfile=spring-webmvc-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-webmvc-3.2.18.RELEASE.pom
# mvn deploy:deploy-file -DrepositoryId=jahia-releases -Durl=https://devtools.jahia.com/nexus/content/repositories/thirdparty-releases/ -Dfile=spring-context-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-context-3.2.18.RELEASE.pom
# mvn deploy:deploy-file -DrepositoryId=jahia-releases -Durl=https://devtools.jahia.com/nexus/content/repositories/thirdparty-releases/ -Dfile=spring-context-support-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-context-support-3.2.18.RELEASE.pom
# mvn deploy:deploy-file -DrepositoryId=jahia-releases -Durl=https://devtools.jahia.com/nexus/content/repositories/thirdparty-releases/ -Dfile=spring-jdbc-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-jdbc-3.2.18.RELEASE.pom
# mvn deploy:deploy-file -DrepositoryId=jahia-releases -Durl=https://devtools.jahia.com/nexus/content/repositories/thirdparty-releases/ -Dfile=spring-aspects-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-aspects-3.2.18.RELEASE.pom
# mvn deploy:deploy-file -DrepositoryId=jahia-releases -Durl=https://devtools.jahia.com/nexus/content/repositories/thirdparty-releases/ -Dfile=spring-test-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-test-3.2.18.RELEASE.pom
# mvn deploy:deploy-file -DrepositoryId=jahia-releases -Durl=https://devtools.jahia.com/nexus/content/repositories/thirdparty-releases/ -Dfile=spring-expression-3.2.18.RELEASE_OSGI2.jar -DpomFile=spring-expression-3.2.18.RELEASE.pom
# mvn deploy:deploy-file -DrepositoryId=jahia-releases -Durl=https://devtools.jahia.com/nexus/content/repositories/thirdparty-releases/ -Dfile=spring-webflow-2.4.6.RELEASE_OSGI2.jar -DpomFile=spring-webflow-2.4.6.RELEASE.pom

rm *.jar *.pom *.bak
