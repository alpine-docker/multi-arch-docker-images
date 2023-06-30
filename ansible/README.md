# Ansible 

* support multi arch
* small image size on alpine
* image tag is ansible core version

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
