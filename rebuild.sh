#!/bin/sh

repoPath="/etc/nixos"

sudo nixos-rebuild switch --flake $repoPath && \
sudo git -C $repoPath add /etc/nixos/ && \
git -C $repoPath commit -m "$(date)" && \
git -C $repoPAth push origin main && \
echo "Sucessfully rebuilt and pushed to Github"
