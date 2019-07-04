FROM openjdk:8-jdk-alpine

VOLUME /tmp

RUN mkdir /k8s-demo

COPY . /k8s-demo

WORKDIR /k8s-demo

RUN /k8s-demo/gradlew build

RUN mv /k8s-demo/build/libs/*.jar /k8s-demo/app.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/k8s-demo/app.jar"]
