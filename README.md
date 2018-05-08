# Trying to run this with nixos but failing

```
[nix-shell:~/source/yh]$ hpack # generate cabal file
generated play.cabal

[nix-shell:~/source/yh]$ exit
exit

[cody@nixos:~/source/yh]$ ls
app  assets  dist  LICENSE  Makefile  package.yaml  play.cabal  README.md  Setup.hs  src  stack.yaml

[cody@nixos:~/source/yh]$ cabal2nix . > default.nix

[cody@nixos:~/source/yh]$ cabal2nix --shell . > shell.nix

[cody@nixos:~/source/yh]$ nix-shell
these derivations will be built:
  /nix/store/glgfdbcig5kd39n065w6gjsgm20002wl-sdl2-gfx-0.2.drv
  /nix/store/186if2k3ad4imd17hwndxlq4fwmyk3q7-ghc-8.0.2-with-packages.drv
building path(s) ‘/nix/store/1c3h1ifsrpv6xzgnvhp98xszg87ng03l-sdl2-gfx-0.2-doc’, ‘/nix/store/hx94fd6cv4j3j0xcrmq7m035g4dpy434-sdl2-gfx-0.2’
setupCompilerEnvironmentPhase
Build with /nix/store/27k61s37i4100x2148h6w4n8gbny8lx9-ghc-8.0.2.
unpacking sources
unpacking source archive /nix/store/94s3hi2p87s8lpx8nijgqs9qm7lp7gxj-sdl2-gfx-0.2.tar.gz
source root is sdl2-gfx-0.2
setting SOURCE_DATE_EPOCH to timestamp 1477086356 of file sdl2-gfx-0.2/src/SDL/Rotozoom.hs
patching sources
compileBuildDriverPhase
setupCompileFlags: -package-db=/tmp/nix-build-sdl2-gfx-0.2.drv-0/package.conf.d -j1 -threaded
[1 of 1] Compiling Main             ( Setup.hs, /tmp/nix-build-sdl2-gfx-0.2.drv-0/Main.o )
Linking Setup ...
configuring
configureFlags: --verbose --prefix=/nix/store/hx94fd6cv4j3j0xcrmq7m035g4dpy434-sdl2-gfx-0.2 --libdir=$prefix/lib/$compiler --libsubdir=$pkgid --docdir=/nix/store/1c3h1ifsrpv6xzgnvhp98xszg87ng03l-sdl2-gfx-0.2-doc/share/doc --with-gcc=gcc --package-db=/tmp/nix-build-sdl2-gfx
-0.2.drv-0/package.conf.d --ghc-option=-optl=-Wl,-rpath=/nix/store/hx94fd6cv4j3j0xcrmq7m035g4dpy434-sdl2-gfx-0.2/lib/ghc-8.0.2/sdl2-gfx-0.2 --ghc-option=-j1 --disable-split-objs --disable-library-profiling --disable-profiling --enable-shared --disable-coverage --enable-lib
rary-vanilla --enable-executable-dynamic --enable-tests --ghc-option=-split-sections --extra-include-dirs=/nix/store/19jbs67fz3af714ljw6p2ds2kzdmzsvj-SDL2-2.0.5-dev/include --extra-lib-dirs=/nix/store/19jbs67fz3af714ljw6p2ds2kzdmzsvj-SDL2-2.0.5-dev/lib --extra-include-dirs
=/nix/store/w1ahis302w6m7lcn47kcbzpf7d89z539-libICE-1.0.9-dev/include --extra-lib-dirs=/nix/store/w1ahis302w6m7lcn47kcbzpf7d89z539-libICE-1.0.9-dev/lib --extra-include-dirs=/nix/store/b5lmr832rmp70cdvn4vdv3jzsx4r8m7b-xproto-7.0.31/include --extra-lib-dirs=/nix/store/b5lmr8
32rmp70cdvn4vdv3jzsx4r8m7b-xproto-7.0.31/lib --extra-lib-dirs=/nix/store/djdaj92qkyydkrspmghrfa7msxanm7pr-libICE-1.0.9/lib --extra-include-dirs=/nix/store/lf2vwa9b9f5smbq67abvy62264z6a3lh-libXi-1.7.9-dev/include --extra-lib-dirs=/nix/store/lf2vwa9b9f5smbq67abvy62264z6a3lh-
libXi-1.7.9-dev/lib --extra-include-dirs=/nix/store/wk6q5lgw5vh3rwc8lamjxqxbd01q4w2c-inputproto-2.3.2/include --extra-lib-dirs=/nix/store/wk6q5lgw5vh3rwc8lamjxqxbd01q4w2c-inputproto-2.3.2/lib --extra-include-dirs=/nix/store/ywabfl2z757j9hybaxkz27xq39s8fihj-libXfixes-5.0.2-
dev/include --extra-lib-dirs=/nix/store/ywabfl2z757j9hybaxkz27xq39s8fihj-libXfixes-5.0.2-dev/lib --extra-include-dirs=/nix/store/nvg8r74fy2smawhnxarmrkzlaqhk5zvb-fixesproto-5.0/include --extra-lib-dirs=/nix/store/nvg8r74fy2smawhnxarmrkzlaqhk5zvb-fixesproto-5.0/lib --extra-
include-dirs=/nix/store/pwdbmncm799zldrwc9vyrrkdgz530n8p-xextproto-7.3.0/include --extra-lib-dirs=/nix/store/pwdbmncm799zldrwc9vyrrkdgz530n8p-xextproto-7.3.0/lib --extra-lib-dirs=/nix/store/vpfdh63rmra0b0s2k2wdyv7gcnj16a8n-libXfixes-5.0.2/lib --extra-lib-dirs=/nix/store/sh
rr30asrh5psc17i3f2xmx083wvvx6i-libXi-1.7.9/lib --extra-include-dirs=/nix/store/lkn98dkydzwa5rn86jl6lafag4xnq7m8-libXScrnSaver-1.2.2/include --extra-lib-dirs=/nix/store/lkn98dkydzwa5rn86jl6lafag4xnq7m8-libXScrnSaver-1.2.2/lib --extra-include-dirs=/nix/store/9mhqblhmq5x041z2
y7b0fhnspp4195mk-scrnsaverproto-1.2.2/include --extra-lib-dirs=/nix/store/9mhqblhmq5x041z2y7b0fhnspp4195mk-scrnsaverproto-1.2.2/lib --extra-include-dirs=/nix/store/yzqiy717ggn5kqjn8skn9dk3ygzkr6rk-libXcursor-1.1.15-dev/include --extra-lib-dirs=/nix/store/yzqiy717ggn5kqjn8s
kn9dk3ygzkr6rk-libXcursor-1.1.15-dev/lib --extra-lib-dirs=/nix/store/2zwb9d4bsd2jb5ljdspmgxj8b77i89k5-libXcursor-1.1.15/lib --extra-include-dirs=/nix/store/bbxx2n3x9kw77a3az9hk40pg1dd0n56d-libXinerama-1.1.3-dev/include --extra-lib-dirs=/nix/store/bbxx2n3x9kw77a3az9hk40pg1d
d0n56d-libXinerama-1.1.3-dev/lib --extra-include-dirs=/nix/store/nzfgyxm45a6gviwd176vny8ydyplrmh3-xineramaproto-1.2.1/include --extra-lib-dirs=/nix/store/nzfgyxm45a6gviwd176vny8ydyplrmh3-xineramaproto-1.2.1/lib --extra-lib-dirs=/nix/store/s95d6v1ibw592n95lgsw3fxm6fi29sy5-l
ibXinerama-1.1.3/lib --extra-include-dirs=/nix/store/mv905nrc3r6mh18q5c0i5x3y9pklma93-libXext-1.3.3-dev/include --extra-lib-dirs=/nix/store/mv905nrc3r6mh18q5c0i5x3y9pklma93-libXext-1.3.3-dev/lib --extra-include-dirs=/nix/store/5r377xi5jaqi4xziimnn2dq282ifm03p-libXau-1.0.8-
dev/include --extra-lib-dirs=/nix/store/5r377xi5jaqi4xziimnn2dq282ifm03p-libXau-1.0.8-dev/lib --extra-lib-dirs=/nix/store/z7vj2hha5ikgcmf36y0vp65vqw6j4j82-libXau-1.0.8/lib --extra-lib-dirs=/nix/store/8gdmkr38zjc7vgcigh1laiq98a12cy3d-libXext-1.3.3/lib --extra-include-dirs=/
nix/store/d1wdzviavl1avg28szslxkk6sv8vzbxa-libXrandr-1.5.1-dev/include --extra-lib-dirs=/nix/store/d1wdzviavl1avg28szslxkk6sv8vzbxa-libXrandr-1.5.1-dev/lib --extra-include-dirs=/nix/store/siaaxfcr41zcdiyr085g3v6i8x509p8q-randrproto-1.5.0/include --extra-lib-dirs=/nix/store
/siaaxfcr41zcdiyr085g3v6i8x509p8q-randrproto-1.5.0/lib --extra-include-dirs=/nix/store/hyw8vb1jic28zfbjfy2bip573ckzbgaj-libXrender-0.9.10-dev/include --extra-lib-dirs=/nix/store/hyw8vb1jic28zfbjfy2bip573ckzbgaj-libXrender-0.9.10-dev/lib --extra-include-dirs=/nix/store/mjsa
vjsx0i9kyk7n7cz3zdjnq7r8ayw4-renderproto-0.11.1/include --extra-lib-dirs=/nix/store/mjsavjsx0i9kyk7n7cz3zdjnq7r8ayw4-renderproto-0.11.1/lib --extra-include-dirs=/nix/store/810fa7pfn8b1xqy1756qlinqb9k13dmg-libX11-1.6.5-dev/include --extra-lib-dirs=/nix/store/810fa7pfn8b1xqy
1756qlinqb9k13dmg-libX11-1.6.5-dev/lib --extra-include-dirs=/nix/store/fg1qjlhk9x8gzfvrx4l4k0pnn0jls18a-libxcb-1.12-dev/include --extra-lib-dirs=/nix/store/fg1qjlhk9x8gzfvrx4l4k0pnn0jls18a-libxcb-1.12-dev/lib --extra-lib-dirs=/nix/store/xqxn4fnasach6dxb72331z206m134mm1-lib
xcb-1.12/lib --extra-include-dirs=/nix/store/41vbskgnapahscp40gjfl20kvnw09qda-kbproto-1.0.7/include --extra-lib-dirs=/nix/store/41vbskgnapahscp40gjfl20kvnw09qda-kbproto-1.0.7/lib --extra-lib-dirs=/nix/store/1yd9g0wl9qgf2iysxizwxn7k936jv439-libX11-1.6.5/lib --extra-lib-dirs
=/nix/store/50kdqp7a273c2aqf75nf5zk7kgi07rzi-libXrender-0.9.10/lib --extra-lib-dirs=/nix/store/pfilc1fhlvb16v1v4r1avg3jjb30b0hn-libXrandr-1.5.1/lib --extra-include-dirs=/nix/store/9ngyx9rg8h5q8rc3g226yb6p09gvrl9f-libXxf86vm-1.1.4-dev/include --extra-lib-dirs=/nix/store/9ng
yx9rg8h5q8rc3g226yb6p09gvrl9f-libXxf86vm-1.1.4-dev/lib --extra-include-dirs=/nix/store/wms2vwyiid8bm9hgxs3jw1gfaxc76b9r-xf86vidmodeproto-2.3.1/include --extra-lib-dirs=/nix/store/wms2vwyiid8bm9hgxs3jw1gfaxc76b9r-xf86vidmodeproto-2.3.1/lib --extra-lib-dirs=/nix/store/cnkaxm
ilx6kyff99n6fpz8gdzd4i7s5w-libXxf86vm-1.1.4/lib --extra-include-dirs=/nix/store/q7q5gs5l6avkqwjyzwxhx5sxpna2bwwv-libpulseaudio-10.0-dev/include --extra-lib-dirs=/nix/store/q7q5gs5l6avkqwjyzwxhx5sxpna2bwwv-libpulseaudio-10.0-dev/lib --extra-include-dirs=/nix/store/m98hxnvky
fhfgr28058h4255kmdl8s5g-libcap-2.25-dev/include --extra-lib-dirs=/nix/store/m98hxnvkyfhfgr28058h4255kmdl8s5g-libcap-2.25-dev/lib --extra-include-dirs=/nix/store/9dkj4f1hg704wiv8rz5mxjny629m9zml-attr-2.4.47-dev/include --extra-lib-dirs=/nix/store/ac082jcsg31763mbgiqlirhgsyg
imn1x-attr-2.4.47/lib --extra-lib-dirs=/nix/store/lk1m2j63fkhxccg1d4p79wqirl9j5816-libcap-2.25-lib/lib --extra-lib-dirs=/nix/store/7h0knqy0dix89i9i1zf2k6yybn5s4rjz-libpulseaudio-10.0/lib --extra-lib-dirs=/nix/store/0xbyxl2gmnw0pmjkvgawmlkbl62cvnvy-SDL2-2.0.5/lib --extra-in
clude-dirs=/nix/store/gfpkanh8vf4sbyzsmv0n4ars2wyyii21-SDL2_gfx-1.0.1/include --extra-lib-dirs=/nix/store/gfpkanh8vf4sbyzsmv0n4ars2wyyii21-SDL2_gfx-1.0.1/lib                                                                                                                   
Configuring sdl2-gfx-0.2...
Flags chosen: example=True
Dependency base >=4.7 && <5: using base-4.9.1.0
Dependency bytestring -any: using bytestring-0.10.8.1
Dependency lifted-base >=0.2: using lifted-base-0.2.3.11
Dependency linear >=1.10.1.2: using linear-1.20.7
Dependency monad-control >=1.0: using monad-control-1.0.2.2
Dependency sdl2 >=2.0: using sdl2-2.2.0
Dependency sdl2-gfx -any: using sdl2-gfx-0.2
Dependency template-haskell -any: using template-haskell-2.11.1.0
Dependency text -any: using text-1.2.2.2
Dependency transformers >=0.2: using transformers-0.5.2.0
Dependency vector >=0.10.9.0: using vector-0.12.0.1
Dependency sdl2 >=2.0.3: using version 2.0.5
Dependency SDL2_gfx >=1.0.1: using version 1.0.1
Using Cabal-1.24.2.0 compiled by ghc-8.0
Using compiler: ghc-8.0.2
Using install prefix: /nix/store/hx94fd6cv4j3j0xcrmq7m035g4dpy434-sdl2-gfx-0.2
Binaries installed in:
/nix/store/hx94fd6cv4j3j0xcrmq7m035g4dpy434-sdl2-gfx-0.2/bin
Libraries installed in:
/nix/store/hx94fd6cv4j3j0xcrmq7m035g4dpy434-sdl2-gfx-0.2/lib/ghc-8.0.2/sdl2-gfx-0.2
Dynamic libraries installed in:
/nix/store/hx94fd6cv4j3j0xcrmq7m035g4dpy434-sdl2-gfx-0.2/lib/ghc-8.0.2/x86_64-linux-ghc-8.0.2
Private binaries installed in:
/nix/store/hx94fd6cv4j3j0xcrmq7m035g4dpy434-sdl2-gfx-0.2/libexec
Data files installed in:
/nix/store/hx94fd6cv4j3j0xcrmq7m035g4dpy434-sdl2-gfx-0.2/share/x86_64-linux-ghc-8.0.2/sdl2-gfx-0.2
Documentation installed in:
/nix/store/1c3h1ifsrpv6xzgnvhp98xszg87ng03l-sdl2-gfx-0.2-doc/share/doc
Configuration files installed in:
/nix/store/hx94fd6cv4j3j0xcrmq7m035g4dpy434-sdl2-gfx-0.2/etc
No alex found
Using ar found on system at:
/nix/store/klwxxrlgalq49cjnczvgha3j7l00jixw-binutils-2.28.1/bin/ar
No c2hs found
No cpphs found
Using gcc version 6.4.0 given by user at:
/nix/store/5l6b97jscljkvsq9y9amg71v5jfzddm4-gcc-wrapper-6.4.0/bin/gcc
Using ghc version 8.0.2 found on system at:
/nix/store/27k61s37i4100x2148h6w4n8gbny8lx9-ghc-8.0.2/bin/ghc
Using ghc-pkg version 8.0.2 found on system at:
/nix/store/27k61s37i4100x2148h6w4n8gbny8lx9-ghc-8.0.2/bin/ghc-pkg
No ghcjs found
No ghcjs-pkg found
No greencard found
Using haddock version 2.17.3 found on system at:
/nix/store/27k61s37i4100x2148h6w4n8gbny8lx9-ghc-8.0.2/bin/haddock
No happy found
Using haskell-suite found on system at: haskell-suite-dummy-location
Using haskell-suite-pkg found on system at: haskell-suite-pkg-dummy-location
No hmake found
Using hpc version 0.67 found on system at:
/nix/store/27k61s37i4100x2148h6w4n8gbny8lx9-ghc-8.0.2/bin/hpc
Using hsc2hs version 0.68.1 found on system at:
/nix/store/27k61s37i4100x2148h6w4n8gbny8lx9-ghc-8.0.2/bin/hsc2hs
Using hscolour version 1.24 found on system at:
/nix/store/fh8pq7nh8qx9ba19maw97ba043k9i847-hscolour-1.24.2/bin/HsColour
No jhc found
Using ld found on system at:
/nix/store/5l6b97jscljkvsq9y9amg71v5jfzddm4-gcc-wrapper-6.4.0/bin/ld
No lhc found
No lhc-pkg found
Using pkg-config version 0.29.2 found on system at:
/nix/store/hqing82mi40rvfxp6c1q8ghc89z8630z-pkg-config-0.29.2/bin/pkg-config
Using strip version 2.28 found on system at:
/nix/store/klwxxrlgalq49cjnczvgha3j7l00jixw-binutils-2.28.1/bin/strip
Using tar found on system at:
/nix/store/0lyn8v4w3cd70hzg5md0xwhykhlbsq9f-gnutar-1.29/bin/tar
No uhc found
building
Building sdl2-gfx-0.2...
Preprocessing library sdl2-gfx-0.2...
[ 1 of 10] Compiling SDL.Raw.Helper   ( src/SDL/Raw/Helper.hs, dist/build/SDL/Raw/Helper.o )
[ 2 of 10] Compiling SDL.Raw.ImageFilter ( dist/build/SDL/Raw/ImageFilter.hs, dist/build/SDL/Raw/ImageFilter.o )
[ 3 of 10] Compiling SDL.Raw.Primitive ( dist/build/SDL/Raw/Primitive.hs, dist/build/SDL/Raw/Primitive.o )
[ 4 of 10] Compiling SDL.Raw.Rotozoom ( dist/build/SDL/Raw/Rotozoom.hs, dist/build/SDL/Raw/Rotozoom.o )

src/SDL/Raw/Rotozoom.hsc:39:1: warning: [-Wmissing-pattern-synonym-signatures]
    Pattern synonym with no type signature:
      pattern SMOOTHING_OFF :: forall a. (Num a, Eq a) => a

src/SDL/Raw/Rotozoom.hsc:40:1: warning: [-Wmissing-pattern-synonym-signatures]
    Pattern synonym with no type signature:
      pattern SMOOTHING_ON :: forall a. (Num a, Eq a) => a
[ 5 of 10] Compiling SDL.Rotozoom     ( src/SDL/Rotozoom.hs, dist/build/SDL/Rotozoom.o )
[ 6 of 10] Compiling SDL.Raw.Framerate ( dist/build/SDL/Raw/Framerate.hs, dist/build/SDL/Raw/Framerate.o )

src/SDL/Raw/Framerate.hsc:41:1: warning: [-Wmissing-pattern-synonym-signatures]
    Pattern synonym with no type signature:
      pattern FPS_DEFAULT :: forall a. (Num a, Eq a) => a

src/SDL/Raw/Framerate.hsc:42:1: warning: [-Wmissing-pattern-synonym-signatures]
    Pattern synonym with no type signature:
      pattern FPS_LOWER_LIMIT :: forall a. (Num a, Eq a) => a

src/SDL/Raw/Framerate.hsc:43:1: warning: [-Wmissing-pattern-synonym-signatures]
    Pattern synonym with no type signature:
      pattern FPS_UPPER_LIMIT :: forall a. (Num a, Eq a) => a
[ 7 of 10] Compiling SDL.ImageFilter  ( src/SDL/ImageFilter.hs, dist/build/SDL/ImageFilter.o )
[ 8 of 10] Compiling SDL.Framerate    ( src/SDL/Framerate.hs, dist/build/SDL/Framerate.o )
[ 9 of 10] Compiling SDL.ExceptionHelper ( src/SDL/ExceptionHelper.hs, dist/build/SDL/ExceptionHelper.o )
[10 of 10] Compiling SDL.Primitive    ( src/SDL/Primitive.hs, dist/build/SDL/Primitive.o )
Preprocessing executable 'sdl2-gfx-example' for sdl2-gfx-0.2...
[1 of 1] Compiling Main             ( example/Example.hs, dist/build/sdl2-gfx-example/sdl2-gfx-example-tmp/Main.dyn_o )
Linking dist/build/sdl2-gfx-example/sdl2-gfx-example ...
/tmp/nix-build-sdl2-gfx-0.2.drv-0/sdl2-gfx-0.2/dist/build/libHSsdl2-gfx-0.2-JaY2hEpI0M6zgpJVn6Kc6-ghc8.0.2.so: undefined reference to `SDL_imageFilterLeftUint'
/tmp/nix-build-sdl2-gfx-0.2.drv-0/sdl2-gfx-0.2/dist/build/libHSsdl2-gfx-0.2-JaY2hEpI0M6zgpJVn6Kc6-ghc8.0.2.so: undefined reference to `rotozoomSize'
/tmp/nix-build-sdl2-gfx-0.2.drv-0/sdl2-gfx-0.2/dist/build/libHSsdl2-gfx-0.2-JaY2hEpI0M6zgpJVn6Kc6-ghc8.0.2.so: undefined reference to `SDL_imageFilterLeftByte'
/tmp/nix-build-sdl2-gfx-0.2.drv-0/sdl2-gfx-0.2/dist/build/libHSsdl2-gfx-0.2-JaY2hEpI0M6zgpJVn6Kc6-ghc8.0.2.so: undefined reference to `rotozoomSizeXY'
/tmp/nix-build-sdl2-gfx-0.2.drv-0/sdl2-gfx-0.2/dist/build/libHSsdl2-gfx-0.2-JaY2hEpI0M6zgpJVn6Kc6-ghc8.0.2.so: undefined reference to `zoomSize'
/tmp/nix-build-sdl2-gfx-0.2.drv-0/sdl2-gfx-0.2/dist/build/libHSsdl2-gfx-0.2-JaY2hEpI0M6zgpJVn6Kc6-ghc8.0.2.so: undefined reference to `texturedPolygonRGBA'
collect2: error: ld returned 1 exit status
`cc' failed in phase `Linker'. (Exit code: 1)
builder for ‘/nix/store/glgfdbcig5kd39n065w6gjsgm20002wl-sdl2-gfx-0.2.drv’ failed with exit code 1
cannot build derivation ‘/nix/store/186if2k3ad4imd17hwndxlq4fwmyk3q7-ghc-8.0.2-with-packages.drv’: 1 dependencies couldn't be built
error: build of ‘/nix/store/186if2k3ad4imd17hwndxlq4fwmyk3q7-ghc-8.0.2-with-packages.drv’ failed
/run/current-system/sw/bin/nix-shell: failed to build all dependencies

```


# yh

A tech demo for a shmup game.

Currently works on Linux and OS X.

* [Animated gif](https://streamable.com/0biaj)


## Controls:

* Arrows to move
* Z to shoot
* X to squeeze
* C to restart from checkpoint


## How to Run

### From Source

You will need [Stack](https://haskellstack.org).

#### Ubuntu:

```sh
sudo apt install libsdl2-dev libsdl2-ttf-dev libsdl2-image-dev libsdl2-gfx-dev libsdl2-mixer-dev
make build
make exec
```

#### OS X

```sh
brew install sdl2 sdl2_ttf sdl2_image sdl2_gfx sdl2_mixer
make build
make exec
```

### From Compiled Binary

> Binaries available [here](https://github.com/soupi/yh/releases).

#### Ubuntu:

```sh
sudo apt install libsdl2-2.0-0 libsdl2-ttf-2.0-0 libsdl2-image-2.0-0 libsdl2-gfx-1.0-0 libsdl2-mixer-2.0-0
./shmup
```

#### OS X

```sh
brew install sdl2 sdl2_ttf sdl2_image sdl2_gfx sdl2_mixer
./shmup
```
