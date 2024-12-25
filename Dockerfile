FROM docker:20.10.24-git
ENV TZ=America/Sao_Paulo


RUN apk update
RUN apk upgrade
# Pacotes necessários
RUN apk add bash openssh nodejs npm curl jq knockd
RUN date

RUN npm config set cache /tmp --global