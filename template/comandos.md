Comandos para consulta no servidor Unifi

Teste a conectividade do usuario e senha nos servidor
```bash
curl -k -c /tmp/u.ck -X POST https://SUA-CONTROLADORA:8443/api/login \
  -H 'Content-Type: application/json' -d '{"username":"zabbix","password":"SENHA"}'
```

Retorna com os ID dos sites configurados no servidor
```bash
curl -k -b /tmp/u.ck https://SUA-CONTROLADORA:8443/api/self/sites | jq '.data[] | {name, desc}'
```