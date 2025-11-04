{
  pkgs,
  config,
  username,
  ...
}: {
  programs = {
    firefox = {
      enable = true;
      languagePacks = [ "pl" ];
      policies = {
        DisableTelemetry = true;

        # Extensions
        ExtensionSettings = let
          moz = short: "https://addons.mozilla.org/firefox/downloads/latest/${short}/latest.xpi";
        in {
          "*".installation_mode = "blocked";
      
          "uBlock0@raymondhill.net" = {
            install_url       = moz "ublock-origin";
            installation_mode = "force_installed";
            updates_disabled  = false;
          };
        };
      };
    };
  };
}
