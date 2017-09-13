# Mosca

FROM mhart/alpine-node:4

RUN mkdir -p /usr/src/app 
WORKDIR /usr/src/app/

RUN apk update && apk upgrade && \
		apk add --no-cache bash git openssh make gcc g++ python zeromq-dev krb5-dev && \
	  git clone https://github.com/mcollina/mosca.git . && \
		npm install --unsafe-perm --production && \
		apk del make gcc g++ python git

EXPOSE 80
EXPOSE 1883

ENTRYPOINT ["bin/mosca", "--http-port", "80", "--http-bundle", "-v", "-c", "config/config.js" , "--credentials", "config/credentials.json"]

