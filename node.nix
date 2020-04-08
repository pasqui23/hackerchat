{config,pkgs,...}:let
  p=(import ./default.nix );
in{
  environment.systemPackages=[p.tesi]++(with pkgs;[
    systemd-wait
  ]);
  services.openssh.enable=true;
  systemd.services.testing=rec{
    enable=false;
    wantedBy=["multi-user.target"];
    requiredBy=wantedBy;
    before=wantedBy;
    script=''
      ${p.tesi}/bin/test-chat &> /output.log 
    '';
  };
}