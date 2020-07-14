#!/bin/bash

export c1=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' cluster1)
export c2=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' cluster2)

sed -i.bak \
  -e 's/    certificate-authority-data.*/    insecure-skip-tls-verify: true/g' \
  -e "s/127.0.0.1/$c1/g" \
kubeconfigs/cluster1.yaml

sed -i.bak \
  -e 's/    certificate-authority-data.*/    insecure-skip-tls-verify: true/g' \
  -e "s/127.0.0.1/$c2/g" \
kubeconfigs/cluster2.yaml

