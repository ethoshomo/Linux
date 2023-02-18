#!/bin/bash

echo "Voltando ao root!"
cd /

echo "Criando diretórios!"
# Criando Diretórios
mkdir publico adm ven sec

echo "Criando Grupos!"
# Criando Grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Alterando permissões!"
#Criando Grupos para Distribuir Permissões 
chown root:GRP_ADM adm
chown root:GRP_VEN ven
chown root:GRP_SEC sec

chmod 777 publico
chmod 770 adm
chmod 770 ven
chmod 770 sec

echo "Criando usuários!"
# Criando os usuários

## GRP_ADM
useradd carlos -c "Carlos" -m -p $(openssl passwd 1234) -s /bin/bash -G GRP_ADM
useradd maria -c "Maria" -m -p $(openssl passwd 1234) -s /bin/bash -G GRP_ADM
useradd joao -c "João" -m -p $(openssl passwd 1234) -s /bin/bash -G GRP_ADM

## GRP_VEN
useradd debora -c "Debora" -m -p $(openssl passwd 1234) -s /bin/bash -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -p $(openssl passwd 1234) -s /bin/bash -G GRP_VEN
useradd roberto -c "Roberto" -m -p $(openssl passwd 1234) -s /bin/bash -G GRP_VEN

## GRP_SEC
useradd josefina -c "Josefina" -m -p $(openssl passwd 1234) -s /bin/bash -G GRP_SEC
useradd amanda -c "Amanda" -m -p $(openssl passwd 1234) -s /bin/bash -G GRP_SEC
useradd rogerio -c "Rogerio" -m -p $(openssl passwd 1234) -s /bin/bash -G GRP_SEC

echo "Finalizado!"
