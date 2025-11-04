export HOST=yoga-chromebook
cd /etc/nixos
sudo git pull
sudo nix flake update
sudo nixos-rebuild switch --flake .#$HOST
