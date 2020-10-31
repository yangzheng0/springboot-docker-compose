FROM hub.c.163.com/library/java:8-alpine
WORKDIR /demo
COPY target/springboot-docker-compose-0.0.1-SNAPSHOT.jar demo.jar
#设置镜像的时区,避免出现8小时的误差
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
EXPOSE 8080
ENTRYPOINT ["java","-Xms256m","-Xmx512m","-jar","demo.jar"]