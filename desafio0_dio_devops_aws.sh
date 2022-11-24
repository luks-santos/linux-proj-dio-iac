#! /bin/bash

#criando grupos
groupadd -f GRP_ADM
groupadd -f GRP_VEN
groupadd -f GRP_SEC

#criando diretórios com permissões
mkdir -v -m 777 /home/publico && mkdir -v -m 770 /home/adm /home/ven /home/sec

#mudando dono e grupo
chown -v root:GRP_ADM /home/adm
chown -v root:GRP_VEN /home/ven
chown -v root:GRP_SEC /home/sec

#criando usuários e adicionando eles ao seus respectivos grupos
useradd -m -s /bin/bash -G GRP_ADM -p $(openssl passwd 1234) carlos
useradd -m -s /bin/bash -G GRP_ADM -p $(openssl passwd 1234) maria
useradd -m -s /bin/bash -G GRP_ADM -p $(openssl passwd 1234) joao

useradd -m -s /bin/bash -G GRP_VEN -p $(openssl passwd 1234) debora
useradd -m -s /bin/bash -G GRP_VEN -p $(openssl passwd 1234) sebastiana
useradd -m -s /bin/bash -G GRP_VEN -p $(openssl passwd 1234) roberto

useradd -m -s /bin/bash -G GRP_SEC -p $(openssl passwd 1234) josefina
useradd -m -s /bin/bash -G GRP_SEC -p $(openssl passwd 1234) amanda
useradd -m -s /bin/bash -G GRP_SEC -p $(openssl passwd 1234) rogerio

 
