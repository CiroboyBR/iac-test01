#!bin/bash

rm -Rf /publico
rm -Rf /adm
rm -Rf /ven
rm -Rf /sec

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

userdel -r -f carlos
userdel -r -f debora
userdel -r -f josefina
userdel -r -f maria
userdel -r -f sebastiana
userdel -r -f amanda
userdel -r -f joao
userdel -r -f roberto
userdel -r -f rogerio

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -m -s /bin/bash -p $(openssh passwd -crypt Pass123) -G GRP_ADM
useradd debora -m -s /bin/bash -p $(openssh passwd -crypt Pass123) -G GRP_ADM
useradd josefina -m -s /bin/bash -p $(openssh passwd -crypt Pass123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssh passwd -crypt Pass123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssh passwd -crypt Pass123) -G GRP_VEN
useradd amanda -m -s /bin/bash -p $(openssh passwd -crypt Pass123) -G GRP_VEN
useradd joao -m -s /bin/bash -p $(openssh passwd -crypt Pass123) -G GRP_SEC
useradd roberto -m -s /bin/bash -p $(openssh passwd -crypt Pass123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssh passwd -crypt Pass123) -G GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:GRP_ADM /publico

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado!"