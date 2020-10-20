docker run -d \
-p 8000:8000 \
-e VAULT_URL_DEFAULT=$VAULT_ADDR \
-e VAULT_AUTH_DEFAULT=$VAULT_TOKEN \
-e NODE_TLS_REJECT_UNAUTHORIZED=0 \
--name vault-ui2 \
djenriquez/vault-ui
