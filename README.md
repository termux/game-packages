# Termux game packages

[![Powered by JFrog Bintray](./.github/static/powered-by-bintray.png)](https://bintray.com)

[![Last build status](https://github.com/termux/game-packages/workflows/Packages/badge.svg)](https://github.com/termux/game-packages/actions)

This repository contains games for termux.

# Contributing

Information on how to open pull requests to help keep the packages here up to date can be read in [CONTRIBUTING.md](CONTRIBUTING.md)

# Building a package
To build a package, first clone game-packages,
```sh
git clone https://github.com/termux/game-packages
```

If you want to build a package with the docker container run
```sh
./start-builder.sh ./build-package.sh name-of-package
```
You might have to run the command as root, if you have not configured docker to be run as your user.

To build outside the docker container you can run
```sh
./termux-packages/build-package.sh ../packages/package-to-build)
```
`../` is needed since termux-packages/build-package.sh expects the path given (packages/package-to-build) to be relative to the position to the builde-package.sh script.

# Subscribing to the repository
To install packages from this repository, you need to subscribe to it with:
```sh
pkg install game-repo
```
In the default termux installation this has already been done.
