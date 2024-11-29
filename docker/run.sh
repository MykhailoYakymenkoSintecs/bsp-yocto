#!/bin/sh

exec docker run --rm -it \
	-v $SSH_AUTH_SOCK:/run/ssh-agent.sock \
	-e SSH_AUTH_SOCK=/run/ssh-agent.sock \
	-v "$(pwd):/workdir" \
	crops/poky:ubuntu-22.04 \
	--workdir=/workdir

