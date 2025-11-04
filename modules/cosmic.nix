{pkgs, username, ...}: {

  services.displayManager.cosmic-greeter.enable = true;
  services.desktopManager.cosmic.enable = true;

  services.gnome.core-apps.enable = false;
  services.gnome.core-developer-tools.enable = false;
  services.gnome.games.enable = false;
  # services.xserver.excludePackages = [ pkgs.xterm ];

  services.displayManager.autoLogin = {
    enable = true;
    user = username;
  };

  environment.systemPackages = with pkgs; [

  ];

}
