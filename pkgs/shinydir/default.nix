{ lib, fetchFromGitHub, rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "shinydir";
  version = "0.1.2";

  src = fetchFromGitHub {
    owner = "Unoqwy";
    repo = pname;
    rev = version;
    hash = "sha256-Mr7JNt8bFZRqSOTC4U8iOxzCL/+RIhwAMfLsOAkouY0=";
  };

  cargoHash = "sha256-uhIdVnpV3GY4rQLZYKGGpxpQNsF7FRP4jFoBPgvUsd8=";

  meta = with lib; {
    platforms = platforms.all;
  };
}
