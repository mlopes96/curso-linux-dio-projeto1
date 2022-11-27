#!/bin/bash

echo "Criando os diretórios de rede ..."

mkdir /publico
mkdir /administrativo
mkdir /vendas
mkdir /secretaria

echo "Criando os grupos dos usuários ..."

groupadd GRP_ADM
groupadd GRP_VENDAS
groupadd GRP_SECRETARIA

echo "Criando os usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -5 SenhaInicial123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -5 SenhaInicial123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -5 SenhaInicial123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -5 SenhaInicial123) -G GRP_VENDAS
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -5 SenhaInicial123) -G GRP_VENDAS
useradd roberto -m -s /bin/bash -p $(openssl passwd -5 SenhaInicial123) -G GRP_VENDAS

useradd josefina -m -s /bin/bash -p $(openssl passwd -5 SenhaInicial123) -G GRP_SECRETARIA
useradd amanda -m -s /bin/bash -p $(openssl passwd -5 SenhaInicial123) -G GRP_SECRETARIA
useradd rogerio -m -s /bin/bash -p $(openssl passwd -5 SenhaInicial123) -G GRP_SECRETARIA

echo "Especificando as permissões dos diretórios ..."

chown root:GRP_ADM /administrativo
chown root:GRP_VENDAS /vendas
chown root:GRP_SECRETARIA /secretaria

chmod 770 /administrativo
chmod 770 /vendas
chmod 770 /secretaria
chmod 777 /publico

echo "Fim....."
