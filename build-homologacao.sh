#!/bin/sh
versao='homologacao'
git checkout homologacao
git pull origin homologacao
git add . 
git commit -m $versao
git push origin homologacao

echo "fim"