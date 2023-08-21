{ lib, fetchFromGitHub }:
let 
  src = fetchFromGitHub {
    owner = "adam-gaia";
    repo = "ind";
    rev = "cf62f87ec0dd0cf232bbc25de796ced6bb6b478b";
    sha256 = "sha256-3RKeNHubaL9Le3K0cHkIb5n9AXGjLmISbui4ovCJbqg=";
  };
in
  import "${src}/flake.nix"

