{ nixpkgs ? import <nixpkgs> {}, compiler ? "default", doBenchmark ? false }:

let

  inherit (nixpkgs) pkgs;

  f = { mkDerivation, async, base, bytestring, containers, deepseq
      , dlist, file-embed, lens, linear, mtl, optparse-generic, random
      , sdl2, sdl2-gfx, sdl2-image, sdl2-mixer, sdl2-ttf, stdenv, stm
      , text, transformers, vector
      }:
      mkDerivation {
        pname = "play";
        version = "0.1.0.0";
        src = ./.;
        isLibrary = true;
        isExecutable = true;
        libraryHaskellDepends = [
          async base bytestring containers deepseq dlist file-embed lens
          linear mtl random sdl2 sdl2-gfx sdl2-image sdl2-mixer sdl2-ttf stm
          text transformers vector
        ];
        executableHaskellDepends = [
          async base bytestring containers deepseq dlist file-embed lens
          linear mtl optparse-generic random sdl2 sdl2-gfx sdl2-image
          sdl2-mixer sdl2-ttf stm text transformers vector
        ];
        license = stdenv.lib.licenses.asl20;
      };

  haskellPackages = if compiler == "default"
                       then pkgs.haskellPackages
                       else pkgs.haskell.packages.${compiler};

  variant = if doBenchmark then pkgs.haskell.lib.doBenchmark else pkgs.lib.id;

  drv = variant (haskellPackages.callPackage f {});

in

  if pkgs.lib.inNixShell then drv.env else drv