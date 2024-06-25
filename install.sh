#!/bin/bash

rsync -Wav /host-home-folder/.config/nvim/ $HOME/.config/nvim/

curl 'https://objects.githubusercontent.com/github-production-release-asset-2e65be/16408992/df1bb124-d9ac-410b-a5aa-73015b4b528f?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=releaseassetproduction%2F20240625%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20240625T194201Z&X-Amz-Expires=300&X-Amz-Signature=c81372b87e9e1b2c9f33d0efe2b62ef9c226158a82558752fffadf49fc35edf3&X-Amz-SignedHeaders=host&actor_id=0&key_id=0&repo_id=16408992&response-content-disposition=attachment%3B%20filename%3Dnvim-linux64.tar.gz&response-content-type=application%2Foctet-stream' -o /opt/nvim-linux64.tar.gz

cd /opt

tar xvf nvim-linux64.tar.gz
