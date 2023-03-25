#!/bin/sh

rm -rf yomitan-import

mkdir -p dst
mkdir -p yomitan-import

export CXX=x86_64-w64-mingw32-g++.exe
export CC=x86_64-w64-mingw32-gcc.exe

go get github.com/themoeway/yomitan-import/yomitan
go get github.com/themoeway/yomitan-import/yomitan-gtk

go build github.com/themoeway/yomitan-import/yomitan
go build -ldflags="-H windowsgui" github.com/themoeway/yomitan-import/yomitan-gtk

mv yomitan.exe yomitan-import
mv yomitan-gtk.exe yomitan-import

7za a dst/yomichan-import_windows.zip yomichan-import
