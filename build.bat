@echo off

if exist build rmdir /S /Q build
mkdir build
pushd build

cmake .. -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=MINSIZEREL && mingw32-make

popd
pause
