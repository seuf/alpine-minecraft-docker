FROM alpine
RUN apk add --update curl openjdk8-jre
COPY minecraft_server.sh /usr/share/minecraft/minecraft_server.sh
COPY eula.txt /usr/share/minecraft/eula.txt
ENV MINECRAFT_VERSION 1.11.2
RUN curl https://s3.amazonaws.com/Minecraft.Download/versions/$MINECRAFT_VERSION/minecraft_server.$MINECRAFT_VERSION.jar -o /usr/share/minecraft/minecraft_server.jar
ENTRYPOINT /usr/share/minecraft/minecraft_server.sh
