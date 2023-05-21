FROM eclipse-temurin:17
RUN mkdir /opt/app
COPY . /opt/app
WORKDIR /opt/app
RUN chmod 777 ./docker_run.sh
EXPOSE 8080
CMD ./docker_run.sh
