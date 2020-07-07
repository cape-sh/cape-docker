#!/bin/bash
sed -i' ' -e 's/*certificate-authority-data.*/insecure-skip-tls-verify: true/g' \
  -e 's/127.0.0.1/192.168.65.2/g' \
kubeconfigs/cluster1.yaml

sed -i' ' -e 's/*certificate-authority-data.*/insecure-skip-tls-verify: true/g' \
  -e 's/127.0.0.1/192.168.65.2/g' \
kubeconfigs/cluster2.yaml
