# haproxy-notfound-server

## CA Instructions

```bash
openssl genrsa -des3 -out myCA.key 2048
openssl req -x509 -new -nodes -key myCA.key -sha256 -days 1825 -out myCA.pem
sudo security add-trusted-cert -d -r trustRoot -k /Library/Keychains/System.keychain myCA.pem
openssl genrsa -out dev.haproxy-notfound.com.key 2048
openssl req -new -key dev.haproxy-notfound.com.key -out dev.haproxy-notfound.com.csr
```

