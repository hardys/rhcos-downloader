FROM quay.io/higginsd/resource-downloader

RUN yum install -y epel-release && yum install -y qemu-img jq iproute virt-what && yum clean all

COPY ./get-resource.sh /usr/local/bin/get-resource.sh
