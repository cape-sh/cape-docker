#!/bin/bash
export IP=$(ip -o route get to 8.8.8.8 | sed -n 's/.*src \([0-9.]\+\).*/\1/p')
sed -i.bak \
  -e "s/    certificate-authority-data.*/    insecure-skip-tls-verify: true/g" \
  -e "s/127.0.0.1/$IP/g" \
kubeconfigs/cluster1.yaml

sed -i.bak \
  -e 's/    certificate-authority-data.*/    insecure-skip-tls-verify: true/g' \
  -e 's/127.0.0.1/192.168.65.2/g' \
sed -i.bak \
  -e "s/    certificate-authority-data.*/    insecure-skip-tls-verify: true/g" \
  -e "s/127.0.0.1/$IP/g" \
kubeconfigs/cluster2.yaml
