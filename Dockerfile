FROM docker:20.10.24-git
ENV TZ=America/Sao_Paulo

RUN npm config set cache /tmp --global

RUN apk update
RUN apk upgrade
# Pacotes necessários
RUN apk add bash openssh nodejs npm curl jq
RUN date
