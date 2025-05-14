FROM ubuntu

RUN apt-get update && apt-get install figlet -y

RUN touch /tmp/hola

CMD ["tail", "-f", "/dev/null"] //hace que el contenedor no se cierre