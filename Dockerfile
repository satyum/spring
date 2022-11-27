FROM maven:3-openjdk-8-slim

#WORKDIR /home/satyam/Documents/github/app

#COPY . .
ADD target/spring-boot-rest-example-0.5.0.war  spring-boot-rest-example-0.5.0.war

ENTRYPOINT ["java", "-jar","-Dspring.profiles.active=mysql","spring-boot-rest-example-0.5.0.war"]
