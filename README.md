# haproxy-static-errors-server

## CA Instructions

```bash
openssl genrsa -des3 -out myCA.key 2048
openssl req -x509 -new -nodes -key myCA.key -sha256 -days 1825 -out myCA.pem
sudo security add-trusted-cert -d -r trustAsRoot -k /Library/Keychains/System.keychain myCA.pem
openssl genrsa -out dev.haproxy-notfound.com.key 2048
openssl req -new -key dev.haproxy-notfound.com.key -out dev.haproxy-notfound.com.csr
```

## Run

The example server is built with docker and run using docker-compose.  To build and run the server execute
```bash
make run
```

This will start up the haproxy example server on port 8080.  To change the port edit the `.env` file and adjust the `EXTERNAL_PORT` variable to the desired port.

### Example paths

| Status Code | Path |
| ----------- | ---- |
| 404 | /404 |
| 503 | /503 |