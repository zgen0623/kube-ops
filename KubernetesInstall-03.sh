#!/bin/bash
# Download relevant softwares. Please verify sha512 yourself.
while true;
    do
        curl -L -C - -O https://dl.k8s.io/v1.13.2/kubernetes-server-linux-amd64.tar.gz>&/dev/null && \
        curl -L -C - -O https://github.com/etcd-io/etcd/releases/download/v3.2.26/etcd-v3.2.26-linux-amd64.tar.gz>&/dev/null && \
        curl -L -C - -O https://pkg.cfssl.org/R1.2/cfssl_linux-amd64>&/dev/null && \
        curl -L -C - -O https://pkg.cfssl.org/R1.2/cfssljson_linux-amd64>&/dev/null && \
        curl -L -C - -O https://pkg.cfssl.org/R1.2/cfssl-certinfo_linux-amd64>&/dev/null &&\
        if [ $? -eq 0 ];
            echo "All software packages has been download"
            then break; 
        fi;
    done