
## Try CAPE on docker-compose
> clone repo
```
git clone https://github.com/cape-sh/cape-docker
cd cape-docker
docker-compose up -d
```

```
./hacks/config.sh
```

> For MAC
```
export IP=$(ipconfig getifaddr en0)
```

> For Linux
```
> get the ip address of machine
export IP=$(ip -o route get to 8.8.8.8 | sed -n 's/.*src \([0-9.]\+\).*/\1/p')
```


> Install CAPE 
```
export KUBECONFIG=$(pwd)/kubeconfigs/cape.yaml

helm install cape-install cape/cape \
--set ingress.hostname=${IP}.nip.io \
--set scheme=http \
--set licence="free10nodes"

kubectl -n cape wait --for=condition=available --timeout=600s deployment/web
```

> open CAPE UI
```
open http://${IP}.nip.io
```

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



