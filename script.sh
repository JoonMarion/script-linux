#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN

echo "Criando usuários no sistema..."

useradd joao -c "João Mariano" -m -s /bin/bash -p $(openssl passwd -crypt senhadojoao) -G GRP_ADM
useradd pedro -c "Pedro da Silva" -m -s /bin/bash -p $(openssl passwd -crypt senhadopedro) -G GRP_ADM
useradd melissa -c "Melissa Hapuq" -m -s /bin/bash -p $(openssl passwd -crypt senhadamelissa) -G GRP_VEN
useradd leticia -c "Letícia Paiva" -m -s /bin/bash -p $(openssl passwd -crypt senhadaleticia) -G GRP_VEN

echo "Adicionando permissões aos diretórios ..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven

echo "[ Processo finalizado ]"