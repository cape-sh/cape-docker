## Try CAPE on docker
```
docker run --privileged -p 80:80 capesh/cape:latest
```

### Use http://machine-ip-address to access CAPE UI

> MAC OSX
```
open http://$(ipconfig getifaddr en0)
```

> Linux
```
open http://$(ip -o route get to 8.8.8.8 | sed -n 's/.*src \([0-9.]\+\).*/\1/p')
```

> Windows
```
open http://<ipaddress_of_machine>
```