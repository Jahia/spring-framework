# Build the fork 

Only spring-web needs to be built
Needs Java 7
Gradle version not supported by intellij

## Steps
 - Adapt the code
 - Set version in gradle.properties (increase jahiaX with X+1)
 - Set your JAVA_HOME to Java 8 (for deps downloads without https problems) in a specific shell
 - Build one time in java 8 (for deps)
   - ./gradlew :spring-web:build
 - Set your JAVA_HOME to Java 7 and the PATH accordingly 
   - export JAVA_HOME=/opt/java-7-jdk
   - export PATH=$JAVA_HOME/bin:$PATH
 - Check java version is 7
   - java -version
 - Build spring-web
   - ./gradlew :spring-web:clean
   - ./gradlew :spring-web:install
 - Set version in spring-web.bnd
 - Lunch the ./generate-spring-web.sh in spring-bnd
 - Restore your java versions
