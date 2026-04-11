curl -X POST http://localhost:8080/gateway/backend/modify/add \
 -H "Content-Type: application/json" \
 -d '{  "name": "trino-1",
        "proxyTo": "http://trino:8080",
        "active": true,
        "routingGroup": "adhoc"
    }'
