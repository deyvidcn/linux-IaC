#!/bin/bash

echo "Crinado diretórios..."

mkdir -p /dados/grupos/adm
mkdir -p /dados/grupos/ven
mkdir -p /dados/grupos/sec
mkdir -p /dados/publico

echo "Crinado grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Crinado usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC

echo "Especificando permissões de diretórios..."

chown root:GRP_ADM /dados/grupos/adm
chown root:GRP_VEN /dados/grupos/ven
chown root:GRP_SEC /dados/grupos/sec

chmod 770 /dados/grupos/adm
chmod 770 /dados/grupos/ven
chmod 770 /dados/grupos/sec
chmod 777 /dados/publico
