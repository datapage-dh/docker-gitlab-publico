#!/bin/sh
versao='1.0.1'
git add . 
git commit -m $versao
git push origin main 
git tag -a v$versao -m 'inicio instalancao '
git push origin v$versao
# git tag -a vlatest -m 'varias libs novas usando lasted '
# git push origin vlatest

echo "fim"