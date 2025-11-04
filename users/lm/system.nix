{ lib, pkgs, username, ... }: {
  users.users.${username} = {
    isNormalUser = true;
    description = username;
    hashedPassword = "$y$j9T$HV5irxVAY.uS4jaHD00Gw0$kvMPxSAiFnL2GIjEshsrNcfnvB43/fH40UD3kRLVPu1";
    extraGroups = ["networkmanager" "wheel" "kvm" "adbusers"];
  };

  services.udev.packages = [
    pkgs.android-udev-rules
  ];
}