{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{
  # https://devenv.sh/basics/
  env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = [
    pkgs.git

    pkgs.fribidi.dev
    pkgs.imlib2.dev
    pkgs.libmpdclient
    pkgs.pango.dev
    pkgs.xorg.libX11.dev
    pkgs.xorg.libXext.dev
    pkgs.xorg.libxcb.dev
    pkgs.xorg.libXft.dev
    pkgs.xorg.libXinerama.dev
    pkgs.xorg.libXrender.dev
    pkgs.yajl
  ];

  # https://devenv.sh/languages/
  languages.c.enable = true;

  # https://devenv.sh/scripts/
  # enterShell = ''
  #   hello
  #   git --version
  # '';
}
