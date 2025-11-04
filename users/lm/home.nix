{pkgs, ...}: {
  ##################################################################################################################
  #
  # All lm's Home Manager Configuration
  #
  ##################################################################################################################

  imports = [
    ../../home/core.nix

    ./fcitx5
    ./i3
    ./programs
    ./rofi
    ./shell
  ];

  programs.git = {
    userName = "LukeMech";
    userEmail = "noreply@lukemech.org";
  };
}