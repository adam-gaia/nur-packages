{ lib, fetchFromGitHub, rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "lsd";
  version = "0.23.1";

  src = fetchFromGitHub {
  owner = "lsd-rs";
  repo = "lsd";
  rev = "8acaabec723cdd71b498212c8a47ac952d022738";
  hash = "sha256-3qsJrHFmMn7TWFjTx7C6SdPKu1sxzZPopzXYG7s7Kok=";
};

  cargoHash = "sha256-cCqMxLKEbiTEQ1ZjnIurre3axdzHMKiygDRd6o12aYs=";

  meta = with lib; {
    platforms = platforms.all;
  };
}
