with (import <nixpkgs> {});
with  pkgs.yarn2nix-moretea ;
rec {
  tesi = mkYarnPackage {
    name = "secureP2PSocialNet";
    src = nix-gitignore.gitignoreSource [] ./.;
    # yarnFlags=defaultYarnFlags+[
    #   "--use-yarnrc" ./.yarnrc
    # ];
    # preConfigure=''
    #   ln -s ${./eth-treekem-master} /build/eth-treekem-master
    # '';
  };
}