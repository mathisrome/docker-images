FROM ubuntu:latest

ARG EMAIL
ARG EMAIL_PASSWORD
ARG DOMAIN_NAME
ARG SMTP_DOMAIN
ARG SMTP_PORT

RUN apt-get update && \
    apt install -y mailutils && \
    apt install -y postfix vim nano curl iputils-ping certbot && \
    apt install -y opendkim opendkim-tools

COPY postfix/main.cf /etc/postfix/main.cf
COPY postfix/master.cf /etc/postfix/master.cf

COPY dkim/opendkim.conf /etc/opendkim.conf
COPY dkim/default/opendkim /etc/default/opendkim

COPY dkim/TrustedHosts /etc/opendkim/TrustedHosts
COPY dkim/KeyTable /etc/opendkim/KeyTable
COPY dkim/SigningTable /etc/opendkim/SigningTable

RUN sed -i "s/relayhost =/relayhost = [${SMTP_DOMAIN}]:${SMTP_PORT}/g" /etc/postfix/main.cf && \
    sed -i "s/<your.domain>/${DOMAIN_NAME}/g" /etc/postfix/main.cf && \
    sh -c 'echo "root: ${EMAIL}" >> /etc/aliases' && \
    sh -c 'echo "${DOMAIN_NAME}" >> /etc/mailname' && \
    sh -c 'echo "[${SMTP_DOMAIN}]:${SMTP_PORT} ${EMAIL}:${EMAIL_PASSWORD}" >> /etc/postfix/sasl/sasl_passwd' && \
    postmap /etc/postfix/sasl/sasl_passwd && \
    chmod 0600 /etc/postfix/sasl/sasl_passwd /etc/postfix/sasl/sasl_passwd.db

EXPOSE 25

CMD service postfix restart && tail -f /dev/null