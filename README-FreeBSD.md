## Requirements
Runner was tested on a FreeBSD 12.1-RELEASE. If you're building/running in jail make sure to set allow.mlock.

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
