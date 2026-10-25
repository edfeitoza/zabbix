# Zabbix Server 8.0 LTS (MySQL)
# Trocar para alpine-8.0-latest quando a 8.0.0 final for lançada
FROM zabbix/zabbix-server-mysql:alpine-trunk

ENV DB_SERVER_HOST="mysql-server" \
    DB_SERVER_PORT="3306" \
    MYSQL_USER="zabbix" \
    MYSQL_DATABASE="zabbix"

# Senhas NÃO ficam na imagem: são passadas via .env
EXPOSE 10051