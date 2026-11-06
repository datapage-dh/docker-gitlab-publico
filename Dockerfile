FROM docker:28.5.2
ENV TZ=America/Sao_Paulo


RUN apk update
RUN apk upgrade

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories

# Pacotes necessários
# Só o cliente SSH (ssh, scp, sftp) + ssh-keygen: o pacote `openssh` completo trazia
# o openssh-server (sshd), que os jobs não usam e que carrega o CVE-2026-123158 (sshole).
RUN apk add bash git openssh-client openssh-keygen nodejs npm curl jq knock
RUN date

RUN npm config set cache /tmp --global