ssh_forward_hop

This podman container is designed to act as a security layer for podman pods by only allowing connection to ports by ssh tunnels. The idea is that by locking port based services behind ssh keys I can give each device access to only the services relevant to them, while also letting others use the device without giving them access to all of those exposed services.
