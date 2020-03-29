#################################################
# INSTALAÇÃO ZABBIX UBUNTU + MYSQL + APACHE	#
# AUTHOR: GLEITON CAMPOS			#
# DATE: 01-29-2018				#
#################################################

apt update

# INSTALANDO DEPENDENCIAS
apt -y install build-essential snmp vim libssh2-1-dev libssh2-1 libopenipmi-dev libsnmp-dev wget libcurl4-gnutls-dev fping libxml2 libxml2-dev curl libcurl3-gnutls libcurl3-gnutls-dev libiksemel-dev libiksemel-utils libiksemel3 libevent-dev libpcre3-dev

apt -y install python-software-properties

add-apt-repository -y ppa:webupd8team/java

add-apt-repository -y ppa:ondrej/php

apt update

apt -y install oracle-java8-installer oracle-java8-set-default

apt install -y apache2 php5.6 php5.6-mysql libapache2-mod-php5.6 php5.6-gd php5.6-bcmath php5.6-mbstring php5.6-xml php-net-socket libpq5 libpq-dev mysql-server mysql-client libmysqld-dev php5.6-ldap

# INSTALANDO E IMPORTANDO TABELAS DO BANCO DE DADOS

mysql -u root -p -e "create database zabbix character set utf8 collate utf8_bin";

mysql -u root -p -e "show databases";

mysql -u root -p -e "grant all privileges on zabbix.* to zabbix@localhost identified by 'SENHA_DO_USUARIO'";

mysql -u root -p -e "select user,host from mysql.user";

mysql -u root -p -e "flush privileges";


#CRIANDO USER ZABBIX NO SISTEM
useradd -M -p $(openssl passwd -1 SENHA_DO_USUARIO) -s /bin/false zabbix


#INSTALANDO ZABBIX SERVER E FRONT-END
wget http://repo.zabbix.com/zabbix/3.5/ubuntu/pool/main/z/zabbix-release/zabbix-release_3.5-1+xenial_all.deb
dpkg -i zabbix-release_3.5-1+xenial_all.deb
apt update
apt install -y zabbix-server-mysql zabbix-frontend-php zabbix-agent

# IMPORTANDO TEMPLATE DO BD DO ZABBIX
cd /usr/share/doc/zabbix-server-mysql
zcat create.sql.gs | mysql -uroot -p zabbix

# CONFIGURANDO ZABBIX SERVER
vim /etc/zabbix/zabbix_server.conf
DBHost=localahost
DBName=zabbix
DBUser=zabbix
DBPassword=zabbix

# INICIANDO OS SERVIÇOS ZABBIX
/etc/init.d/zabbix-server start
/etc/init.d/zabbix-agent start

# DEFININDO SERVIÇOS ZABBIX PARA INICIAR NO SISTEMA
update-rc.d zabbix-server enable
update-rc.d zabbix-agent enable

# CONFIGURANDO APACHE/PHP
vim /etc/php/5.6/apache2/php.ini

date.timezone = "America/Sao_Paulo"
max_execution_time = 300
max_input_time = 300
post_max_size = 16M
always_populate_raw_post_data = -1

service apache2 restart

