# ![logo](docs/ansible.png) Ansible

Ansible is a radically simple IT automation system.
It handles configuration-management, application deployment, cloud provisioning, ad-hoc task-execution, and multinode orchestration -
including trivializing things like zero-downtime rolling updates with load balancers.

This image is based on `debian`.

## Links

* [Documentation](https://docs.ansible.com/ansible/)
* [GitHub](https://github.com/ansible/ansible)

## Supported tags

* `latest`, `pyhon3-latest`
  Latest ansible version with latest python 3 version
* `2.8`
  Latest release from 2.8 branch with latest python 3 version
* `2.7`
  Latest release from 2.7 branch with latest python 3 version
* `pyhon3.6-latest`
  Latest ansible version with latest python 3.6
* `pyhon3.7-latest`
  Latest ansible version with latest python 3.7
* `pyhon2-latest`
  Latest ansible version with python 2

## Usage

```bash
docker pull registry.gitlab.com/geoffrey-grebert/ansible-docker:latest
docker run -t --rm registry.gitlab.com/geoffrey-grebert/ansible-docker:latest ansible --version
```
