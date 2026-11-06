#!/bin/sh
versao='1.2.2'
git add . 
git commit -m $versao
git push origin main 
git tag -a v$versao -m 'so openssh-client + openssh-keygen: remove o sshd da imagem (CVE-2026-123158 sshole)'
git push origin v$versao
# git tag -a vlatest -m 'varias libs novas usando lasted '
# git push origin vlatest

echo "fim"