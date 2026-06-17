#!/bin/bash
echo "starting ssh tunnel hop"
cp -R /app/ssh /home/accessuser/.ssh
chown -R accessuser:accessuser /home/accessuser/.ssh
chmod 0755 /var/run/sshd
echo "ssh proxy hop is online"
/usr/sbin/sshd -D
