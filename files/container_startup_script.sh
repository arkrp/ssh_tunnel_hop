#!/bin/bash
echo "development container online!"
chmod 0755 /var/run/sshd
echo "to use this container, connect via ssh"
cp -R /app/ssh /home/connect/.ssh
chown -R connect:connect /home/connect/.ssh
/usr/sbin/sshd -D
