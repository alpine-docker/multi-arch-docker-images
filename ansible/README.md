# Ansible

- support multi arch
- small image size on alpine
- image tag is ansible core version

### source of Dockerfile

https://github.com/alpine-docker/multi-arch-docker-images/blob/master/ansible/Dockerfile

### Daily CI build logs

N/A

### Docker image tags

https://hub.docker.com/repository/docker/alpine/ansible/tags

### Usage

```
alias ansible="docker run -ti --rm -v ~/.ssh:/root/.ssh -v ~/.aws:/root/.aws -v $(pwd):/apps -w /apps alpine/ansible ansible"
ansible <follow command>
```

or

```
alias ansible-playbook=" docker run -ti --rm -v ~/.ssh:/root/.ssh -v ~/.aws:/root/.aws -v $(pwd):/apps -w /apps alpine/ansible ansible-playbook"
ansible-playbook -i inventory < follow command>
```

### Build and test

Make sure you have set environment variables

```
export CIRCLE_BRANCH=master
export DOCKER_USERNAME=xxxx
export DOCKER_PASSWORD=xxxx
```

Then you can build the image locally

```
git clone https://github.com/alpine-docker/multi-arch-docker-images.git

cd multi-arch-docker-images
./build.sh ansible
```
