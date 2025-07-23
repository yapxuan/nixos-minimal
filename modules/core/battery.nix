{
  # Set battery limit at boot (through systemd)
  systemd.services.set-battery-threshold = {
    description = "Set battery charge limit to 80%";
    wantedBy = [ "multi-user.target" ];
    serviceConfig = {
      Type = "oneshot";
      ExecStart = "/run/current-system/sw/bin/bash -c 'echo 80 > /sys/class/power_supply/BAT0/charge_control_end_threshold'";
    };
  };
}
