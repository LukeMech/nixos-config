{
  disko.devices = {
    disk.sda = {
      type = "disk";
      device = "/dev/nvme0n1";
      content = {
        type = "gpt";
        partitions = {
          ESP = {
            type = "EF00";
            size = "1000M";
            content = {
              type = "filesystem";
              format = "vfat";
              mountpoint = "/boot/efi";
            };
          };
          primary = {
            size = "100%";
            content = {
              type = "lvm_pv";
              vg = "vg1";
            };
          };
        };
      };
    };
    lvm_vg = {
      vg1 = {
        type = "lvm_vg";
        lvs = {
          swap = {
            size = "8G";
            content = {
              type = "swap";
            };
          };
          nix = {
            size = "50G";
            content = {
              type = "filesystem";
              format = "ext4";
              mountpoint = "/nix";
              mountOptions = [
                "noatime"
              ];
            };
          };
          root = {
            size = "100%FREE";
            content = {
              type = "filesystem";
              format = "ext4";
              mountpoint = "/";
              mountOptions = [
                "defaults"
              ];
            };
          };
        };
      };
    };
  };
}
