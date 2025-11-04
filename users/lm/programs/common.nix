{
  lib,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [

  ];

  services = {
    syncthing.enable = true;

    # auto mount usb drives
    udiskie.enable = true;
  };
}
