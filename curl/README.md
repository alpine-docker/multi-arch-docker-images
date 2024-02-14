# alpine/curl

[If enjoy, please consider buying me a coffee.](https://www.buymeacoffee.com/ozbillwang)

Alpine-based image with just curl

NOTES: the original upstream https://github.com/appropriate/docker-curl is in read-only (archived statue), its images used base image of `alpine:3.7`, and are 4 years old now, vulnerabilities in its image, which is risk to use it.

This repo will manage with latest alpine version, but must pass the trivy scan.

## Usage

* with `docker run`
```console
$ docker run --rm alpine/curl -fsSL https://www.google.com/
```

Or use it as alias command

```
alias curl="docker run --rm alpine/curl"

curl -fsSL https://www.google.com/
```

* with `kubectl run`
```
# Each execution typically takes approximately 5 to 10 seconds due to the need to pull the image and create the pod.
kubectl run curl --restart=Never --stdin --rm -it  --image=alpine/curl -- -fsSL https://www.google.com/

# if you want to test the service within kubernetes cluster, 
$ kubectl get service

# suppose, "productpage" is the service name, and "9080" is the service port
# productpage   ClusterIP   10.99.117.108    <none>        9080/TCP   123m

kubectl run curl --restart=Never --stdin --rm -it  --image=alpine/curl -- -sS productpage.default:9080/index.html
```
or use it as alias command
```
alias kubecurl="kubectl run curl --restart=Never --stdin --rm -it  --image=alpine/curl --"

kubecurl -fsSL https://www.google.com/
```

## Tags

* `alpine/curl:8.1.2`: based on `curl` version

## Scan passed

The image is passed the trivy scan, you can run command to confirm

```
$ docker run --rm -v /var/run/docker.sock:/var/run/docker.sock \
    -v $HOME/Library/Caches:/root/.cache/  aquasec/trivy image alpine/curl

...
================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```
