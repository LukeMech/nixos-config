*Replace yoga-chromebook with your desired host config.*

# Switch from existing installation
```
sudo nixos-rebuild switch --flake .#yoga-chromebook
```

# Configuring from live installer
```
sudo nix --experimental-features "nix-command flakes" run github:nix-community/disko -- --mode disko hosts/yoga-chromebook/disko-configuration.nix
sudo nixos-install --flake .#yoga-chromebook --root /mnt
```
