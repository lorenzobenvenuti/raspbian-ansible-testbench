# raspbian-ansible-testbench

A Dockerfile to test Ansible playbooks on Raspbian. 

* In order to use Ansible, `openssh` and `python` are installed.
* To emulate a fresh Raspbian install a `pi` user with password `raspberry` is created. 

# Building the image

```
$ docker build -t raspbian-ansible-testbench .
```

# Running the container

```
$ docker run -d -p 5555:22 raspbian-ansible-testbench
```

In your inventory file you can then define

```ini
raspbian-test ansible_host=x.y.z.w ansible_port=5555
```

where `x.y.z.w` is the IP address of the host running Docker.
