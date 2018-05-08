{ mkDerivation, async, base, bytestring, containers, deepseq, dlist
, file-embed, lens, linear, mtl, optparse-generic, random, sdl2
, sdl2-gfx, sdl2-image, sdl2-mixer, sdl2-ttf, stdenv, stm, text
, transformers, vector
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
}
