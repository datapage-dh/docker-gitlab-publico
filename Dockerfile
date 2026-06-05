FROM docker:28.5.2
ENV TZ=America/Sao_Paulo


RUN apk update
RUN apk upgrade

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

# Pacotes necessários
RUN apk add bash git openssh nodejs npm curl jq knock
RUN date

RUN npm config set cache /tmp --global