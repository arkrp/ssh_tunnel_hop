#!/usr/bin/bash
project_directory=$(realpath $(dirname $BASH_SOURCE))
podman build --jobs 0 -t ssh_forward_hop $project_directory
podman run \
   --replace \
   -d \
   -p 9345:22 \
   -v $project_directory/ssh:/app/ssh \
   --name ssh_forward_hop \
   ssh_forward_hop
