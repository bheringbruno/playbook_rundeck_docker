#!/bin/sh
set -e

cp -R /tmp/.ssh ~/.ssh
chmod 700 ~/.ssh
chmod 644 ~/.ssh/id_rsa.pub
chmod 600 ~/.ssh/id_rsa
chmod 664 ~/.ssh/authorized_keys

/usr/sbin/sshd -D
