{pkgs, username, ...}: {

  services.displayManager.cosmic-greeter.enable = true;
  services.desktopManager.cosmic.enable = true;

  # services.xserver.excludePackages = [ pkgs.xterm ];

  services.displayManager.autoLogin = {
    enable = true;
    user = username;
  };

  environment.sessionVariables.COSMIC_DATA_CONTROL_ENABLED = 1;
  programs.firefox.preferences = {
    # disable libadwaita theming for Firefox
    "widget.gtk.libadwaita-colors.enabled" = false;
  };

  environment.systemPackages = with pkgs; [

  ];
}
