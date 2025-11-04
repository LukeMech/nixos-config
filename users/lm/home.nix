{pkgs, ...}: {
  ##################################################################################################################
  #
  # All lm's Home Manager Configuration
  #
  ##################################################################################################################

  imports = [
    ../../home/core.nix

    ./programs
  ];

  programs.git = {
    userName = "LukeMech";
    userEmail = "noreply@lukemech.org";
  };

  hashedPassword = "$y$j9T$HV5irxVAY.uS4jaHD00Gw0$kvMPxSAiFnL2GIjEshsrNcfnvB43/fH40UD3kRLVPu1";
}