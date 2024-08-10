#!/bin/sh

repoPath="/etc/nixos"

sudo nixos-rebuild switch --flake $repoPath && \
sudo git -C $repoPath add /etc/nixos/ && \
git -C $repoPath commit -m "$(date)" && \
sudo git -C $repoPath push origin main && \
echo "Sucessfully rebuilt and pushed to Github"
