#!/bin/sh

DOCUMENT_ROOT=/usr/share/nginx/html
DOMAIN_NAME=cda-us.com
ACME_SCRIPT=/root/.acme.sh/acme.sh
CHALLENGE_DIR=${DOCUMENT_ROOT}/.well-known/acme-challenge/
CERT_DIR=/etc/nginx/ssl/letsencrypt/${DOMAIN_NAME}

apk add netcat-openbsd bc curl wget git bash openssl libressl

cd /tmp/ && \
    git clone https://github.com/Neilpang/acme.sh.git && \
    cd acme.sh/ && \
    ./acme.sh --install && \
    ${ACME_SCRIPT}

mkdir -vp ${CHALLENGE_DIR} && \
    chown -R nginx:nginx ${CHALLENGE_DIR} && \
    chmod -R 0555 ${CHALLENGE_DIR}

mkdir -p ${CERT_DIR} && \
    cd ${CERT_DIR} && \
    openssl dhparam -dsaparam -out dhparams.pem 4096

${ACME_SCRIPT} --issue -w ${DOCUMENT_ROOT} -d ${DOMAIN_NAME} -k 4096

${ACME_SCRIPT} --installcert -d ${DOMAIN_NAME} \
    --keypath ${CERT_DIR}/${DOMAIN_NAME}.key \
    --fullchainpath ${CERT_DIR}/${DOMAIN_NAME}.cer

cp /tmp/https.conf /etc/nginx/conf.d/default.conf

nginx -s reload
