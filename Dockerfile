FROM docker.io/library/debian:trixie-slim
WORKDIR app
RUN sudo apt-get update
RUN sudo apt-get -y install ssh
COPY ./files/container_startup_script.sh /app/container_startup_script.sh
CMD ["/bin/bash", "/app/container_startup_script.sh"]
