{ lib, fetchFromGitHub, rustPlatform }:

rustPlatform.buildRustPackage rec {
  pname = "shinydir";
  version = "0.1.2";

  src = fetchFromGitHub {
    owner = "Unoqwy";
    repo = pname;
    rev = version;
    hash = "sha256-n6yJ9iE9lThkRkMjyIzGZ+Hi/sS6tYFfngC7sYiJHIw=";
  };

  cargoHash = "sha256-uhIdVnpV3GY4rQLZYKGGpxpQNsF7FRP4jFoBPgvUsd8=";

  meta = with lib; {
    platforms = platforms.all;
  };
}
