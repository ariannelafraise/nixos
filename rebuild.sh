#!/bin/sh

commitMessage="$(date +'%Y-%m-%d %H:%M:%S')"
repoPath="/etc/nixos"

sudo nixos-rebuild switch --flake $repoPath && \
sudo git -C $repoPath add /etc/nixos/ && \
git -C $repoPath commit -m "$commitMessage" && \
sudo git -C $repoPath push origin main && \
echo "Sucessfully rebuilt and pushed to Github"
