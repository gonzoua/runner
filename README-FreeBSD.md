## Requirements
Runner was tested on a FreeBSD 12.1-RELEASE. If you're building/running in jail make sure to set allow.mlock.

## .NET SDK
This repo donwloads .NET SDK v3.1.100 pre-built for FreeBSD by @jasonpugsley For more information see [this wiki page](https://github.com/jasonpugsley/core-sdk/wiki/.Net-Core-3.0.0-for-FreeBSD)

## Build
```
sudo pkg install -y libunwind icu wget bash git libinotify openssl node12 npm-node12
git clone -b freebsd https://github.com/gonzoua/runner.git
cd runner/src
./dev.sh layout
```

## Run
```
cd ../_layout
export DOTNET_ROOT=$(pwd)/../_dotnetsdk/3.1.100
./config.sh --url https://github.com/youruser/yourepo --token ******
./run.sh 
```
