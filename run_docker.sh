#!/bin/bash

docker stop acadgpt && docker rm acadgpt && docker build -t gpt-academic .

docker run -d --name acadgpt \
    -v $HOME:$HOME \
    --add-host=host.docker.internal:host-gateway \
    -p 7861:7861 \
    --restart unless-stopped \
	gpt-academic
