all: evt gen_cert
evt:
	clang -g -Wall -o $@ new.c evt_tls.c -lssl -lcrypto -lrt



gen_cert:
	openssl req -x509 -newkey rsa:2048 -nodes -keyout server-key.pem -out server-cert.pem -config ssl_test.cnf

clean:
	-rm evt