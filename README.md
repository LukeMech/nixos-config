*Replace yoga-chromebook with your desired host config.*

# Switch from existing installation
```
sudo nixos-rebuild switch --flake .#yoga-chromebook
```

# Configuring from live installer
```
sudo nix --experimental-features "nix-command flakes" run .#disko -- --mode disko --flake .#yoga-chromebook
sudo nixos-install --flake .#yoga-chromebook --root /mnt
```
