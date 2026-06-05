#!/bin/sh
versao='1.2.0'
git add . 
git commit -m $versao
git push origin main 
git tag -a v$versao -m 'atualizando para docker 27.5.1'
git push origin v$versao
# git tag -a vlatest -m 'varias libs novas usando lasted '
# git push origin vlatest

echo "fim"