ssh_tunnel_hop

This podman container is designed to act as a security layer for podman pods by only allowing connection to ports by ssh tunnels. The idea is that by locking port based services behind ssh keys I can give each device access to only the services relevant to them, while also letting others use the device without giving them access to all of those exposed services.

Essentially this container does this thing:

1. Copies ssh config file from /app/ssh on the container to the home of accessuser
1. Launches a ssh server on port 22 of the container

So this is just a container which can be accessed via ssh. This is beneficial because SSH provides connection via tunnels and security via its keys

To use this:

1. ensure that a file named 'ssh' containing an 'authorized_keys' file with the ssh public keys you would like to grant access is mounted to /app/ssh at the launch of the container.

2. ensure that there is some way to access port 22 of this container.

If these are true then the container should be functional for ssh tunneling and may be used to use ssh tunnels to access services in your pods!

To verify that this is running, just attempt to connect to the ssh while using the ssh private key associated with one of the authorized public keys.
