with(import<nixpkgs>{});

{  
  t=nixosTest ({lib , ... } : {
    name="";
    testScript=builtins.readFile ./test.py ;
    nodes=rec{
      node1=(import ./node.nix );
      node2=node1;
      node3=node1;
    };
  });
}