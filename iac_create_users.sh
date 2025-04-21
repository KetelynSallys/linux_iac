#!/bin/bash

echo "Create directories..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Create groups..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Create users..."

useradd carlos -c "Carlos DP ADM" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
useradd maria -c "Maria DP ADM" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
useradd joao -c "João DP ADM" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM

useradd sebastiana -c "Sebastiana DP VEN" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
useradd roberto -c "Roberto DP VEN" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
useradd debora -c "Debora DP VEN" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN

useradd josefina -c "Josefina DP SEC" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC
useradd rogerio -c "Rogerio DP SEC" -m -s /bin/bash -p $(openssl passwd  -6 senha123) -G GRP_SEC
useradd amanda -c "Amanda DP SEC" -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC

echo "Modify owner"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Modify directories permissions..."

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Finished..."
