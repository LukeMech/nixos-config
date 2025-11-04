*Replace yoga-chromebook with your desired host config.*

# Switch from existing installation
```
export HOST=yoga-chromebook
sudo nixos-rebuild switch --flake .#$HOST
```

# Configuring from live installer
```
export HOST=yoga-chromebook

# 1. Partition/disks using Disko
sudo nix --experimental-features "nix-command flakes" run github:nix-community/disko -- \
  --mode disko hosts/$HOST/disko-configuration.nix

# 2. Copy your flake config into the target system
sudo mkdir -p /mnt/etc/nixos
sudo cp -r . /mnt/etc/nixos

# 3. Install using your flake as the system config
sudo nixos-install --flake /mnt/etc/nixos#$HOST --root /mnt
```

# Update later
```
export HOST=yoga-chromebook
cd /etc/nixos
sudo git pull
sudo nixos-rebuild switch --flake .#$HOST
```
