cp ~/.m2/repository/org/springframework/spring-beans/3.2.18.jahia1/spring-beans-3.2.18.jahia1.jar .

cp ~/.m2/repository/org/springframework/spring-beans/3.2.18.jahia1/spring-beans-3.2.18.jahia1.pom .

sed -i .bak s/3.2.18.jahia1/3.2.18.jahia1_OSGI/g *.pom

bnd *.bnd

jar xf spring-beans-3.2.18.jahia1.jar META-INF ; rm META-INF/MANIFEST.MF ; jar uf spring-beans-3.2.18.jahia1_OSGI.jar META-INF/* ; rm -Rf META-INF

mvn install:install-file -Dfile=spring-beans-3.2.18.jahia1_OSGI.jar -DpomFile=spring-beans-3.2.18.jahia1.pom

# mvn deploy:deploy-file -DrepositoryId=jahia-releases -Durl=https://devtools.jahia.com/nexus/content/repositories/thirdparty-releases/ -Dfile=spring-beans-3.2.18.jahia1_OSGI.jar -DpomFile=spring-beans-3.2.18.jahia1.pom

rm *.jar *.pom *.bak
