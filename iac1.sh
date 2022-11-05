#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados!!!"

echo "Criando grupos de usuários....."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados!!!"

echo "Criandos usuários, e atribuindo grupos...."

useradd carlos -c "Carlos Perreira" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_ADM
useradd maria -c "Maria Borges" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_ADM
useradd joao -c "João Marcelino" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_ADM

useradd debora -c "Debora Lima" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_VEN
useradd sebastiana -c "Sebastiana Oliveira" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_VEN
useradd roberto -c "Roberto Alves" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_VEN

useradd josefina -c "Josefina Alcantra" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_SEC
useradd amanda -c "Amanda Carvalho" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_SEC
useradd rogerio -c "Rogerio Almeida" -m -s /bin/bash -p $(openssl passwd 123456) -G GRP_SEC

echo "Usuários criados, e grupos atribuidos!!!!"

echo "Especificando permissões dos diretórios......"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Permissões atribuidas!!!"

echo "Criação finalizada!!"


