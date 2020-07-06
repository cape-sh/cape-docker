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
