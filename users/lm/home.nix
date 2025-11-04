{pkgs, ...}: {
  ##################################################################################################################
  #
  # All lm's Home Manager Configuration
  #
  ##################################################################################################################

  imports = [
    ../core.nix

    ./programs
  ];

  programs.git = {
    userName = "LukeMech";
    userEmail = "noreply@lukemech.org";
  };

  dconf.enable = true;
  dconf.settings = {
    "org/gnome/desktop/interface" = {
      accent-color = "green";
    };
  };
}
