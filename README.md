## Try CAPE on docker
```
docker run --privileged -p 80:80 capesh/cape:latest
```

#### Use http://machine-ip-address to access CAPE UI 


> MAC OSX
```
ipconfig getifaddr en0
open http://192.168.x.x
```

> Linux
```
echo $(ip -o route get to 8.8.8.8 | sed -n 's/.*src \([0-9.]\+\).*/\1/p')
open http://192.168.x.x
```

> Windows
```
open http://192.168.x.x
```

## Try CAPE on docker-compose
> clone repo
```
git clone https://github.com/cape-sh/cape-docker
cd cape-docker
docker-compose up -d
```

> For MAC
```
./hacks/mac.sh
> get the ip address of machine
export IP=$(ipconfig getifaddr en0)
```

> Install CAPE
replace 
```
export KUBECONFIG=$(pwd)/kubeconfigs/cape.yaml

helm3 install cape-install cape/cape \
--set ingress.hostname=${IP}.nip.io \
--set scheme=http \
--set licence="free10nodes"
```

> open CAPE UI
```
open http://${IP}.nip.io
```


