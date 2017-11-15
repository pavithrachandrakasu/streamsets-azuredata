FROM alpine:3.4
MAINTAINER Pavithra K C <Pavithra.KC@intlfcstone.com>

ARG SDC_USER=sdc
 
USER root

RUN apk --no-cache add bash \
    curl \
    krb5-libs \
    libstdc++ \
    sed
	
RUN apk update \ 
apk add sshfs && apk clean