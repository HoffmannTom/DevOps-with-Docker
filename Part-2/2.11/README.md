# EXERCISE 2.11: 
## Development and SSL-Offloading
My Django project uses the built-in lightweight webserver. It has the limitation that it only supports http.
In production https is needed and the developer must be able to check the SSL configuration and harden it if necessary.

For development and testing, neither Python, nor Django has to be installed. A file editor and docker are sufficient.  
With docker compose, the image can be built, the files are copied into the container and together with the NGINX proxy, the web application is up and running.  
The mentioned Django project can be found at https://github.com/HoffmannTom/leaky.

For enabling https, an NGINX proxy is used which takes care of SSL-Offloading and protects the data transfer.  
The proxy server also takes care to redirect http to https, supports OCSP stapling (if available by the CA) and can add a HSTS header.
The SSL configuration is hardened to support only strong cryptographic ciphers and TLS versions (>= TLS 1.2).
Details can be found in the file nginx.conf.

## Generation of CA and keypair
Generate private key and CSR:
 ``` 
openssl genrsa -out certificate.key 4096

openssl req \
	-new \
	-key certificate.key \
	-nodes \
	-out server.csr \
	-subj "/C=DE/ST=Bavaria/L=/O=/OU=IT/CN=localhost" \
	-addext "subjectAltName=DNS:localhost\
,DNS:192.168.10.40\
,IP:192.168.10.40"
``` 
Generate CA:
``` 
openssl genrsa -out ca.key 4096
openssl req \
	-new \
	-x509 \
	-nodes \
	-days 36500 \
	-key ca.key \
	-out ca.pem \
	-subj "/C=DE/ST=Bavaria/L=/O=/OU=IT/CN=localhost-ca.test"
 ``` 
Sign the csr with the self-signed CA: 
 ``` 
openssl x509 \
	-req \
	-in server.csr \
	-CAkey ca.key \
	-CA ca.pem \
	-set_serial -01 \
	-out certificate.pem \
	-days 36500 \
	-sha256 \
	-extfile <(printf "subjectAltName=DNS:localhost\
,DNS:192.168.10.40\
,IP:192.168.10.40")	
 ``` 

Verify the certificate with the CA certificate:
 ``` 
openssl verify -CAfile ca.pem certificate.pem
``` 
## Further enhancements
Additional options are e.g., using NGINX as a loadbalancer or using the image certbot/certbot to automatically fetch and renew SSL certificate from Let's encrypt.

## Files
For docker-compose, Dockerfile, nginx-configuration file and keys for SSL, see submitted files in this folder.
The additional python sources are located at https://github.com/HoffmannTom/leaky.
