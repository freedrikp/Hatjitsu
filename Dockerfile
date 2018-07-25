FROM alpine:latest

ENV instDir /Hatjitsu

RUN apk --no-cache add nodejs nodejs-npm git && \
    mkdir -p ${instDir}

ADD . ${instDir}

RUN cd ${instDir} && \
    npm install -d

EXPOSE 5000

WORKDIR ${instDir}

CMD node server
