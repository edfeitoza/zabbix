
```bash
docker network create --subnet 172.20.0.0/16 --ip-range 172.20.240.0/20 zabbix-net
```

```bash
docker run --name zabbix-server-mysql --network=zabbix-net --restart unless-stopped -t -e DB_SERVER_HOST="192.168.1.210" -e MYSQL_USER="zabbix" -e MYSQL_PASSWORD="zabbix123" -p 10051:10051 -d zabbix/zabbix-server-mysql:alpine-5.4-latest
```

```bash
docker logs zabbix-server-mysql
```
***
# Subir e validar
```bash
docker compose up -d --build
docker compose ps
docker compose logs -f zabbix-server-mysql
```

# Testar acesso ao banco
```bash
docker exec -it zabbix-mysql mysql -uzabbix -p -e "SHOW TABLES;" zabbix | head
```
***

# Baixando todos os conatiners ativos
```bash
docker compose down
```
# Limpando volumes temporarios
```bash
docker volume prune -f
```
***