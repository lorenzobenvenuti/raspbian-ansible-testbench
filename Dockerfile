from resin/rpi-raspbian

RUN apt-get update && apt-get install -y openssh-server python
RUN mkdir /var/run/sshd
RUN adduser --home /home/pi pi
RUN adduser pi sudo
RUN echo 'pi:raspberry' | chpasswd

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
