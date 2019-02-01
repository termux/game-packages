# Termux game packages
This repository contains games for termux.

# Building a package
To build a package, first clone game-packages,
```sh
git clone https://github.com/termux/game-packages
```
and then update the termux-packages submodule.
```sh
cd game-packages
git submodule init
git submodule update
```
You can then build a package with the following:
```sh
./build-package.sh name-of-package
```
Note that this currently only works outside of the docker container.
To build from the docker container, termux-root-packages has to be a subfolder of termux-packages, and a game can then be built with
```sh
./build-package.sh game-packages/packages/package-to-build
```
The termux-package submodule is not needed for this.

# Subscribing to the repository
To install packages from this repository, you need to subscribe to it with:
```sh
pkg install game-repo
```
