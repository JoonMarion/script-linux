#!/bin/bash

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN

echo "Criando usuarios no sistema..."

useradd joao -c "Joao Mariano" -m -s /bin/bash -p $(openssl passwd senhadojoao) -G GRP_ADM
useradd pedro -c "Pedro da Silva" -m -s /bin/bash -p $(openssl passwd senhadopedro) -G GRP_ADM
useradd melissa -c "Melissa Hapuq" -m -s /bin/bash -p $(openssl passwd senhadamelissa) -G GRP_VEN
useradd leticia -c "Letícia Paiva" -m -s /bin/bash -p $(openssl passwd senhadaleticia) -G GRP_VEN

echo "Adicionando permissoes aos diretorios ..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven

echo "[ Processo finalizado ]"
