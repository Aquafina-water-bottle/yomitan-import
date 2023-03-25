#!/bin/sh

rm -rf yomitan-import

mkdir -p dst
mkdir -p yomitan-import

go get github.com/themoeway/yomitan-import/yomitan
go get github.com/themoeway/yomitan-import/yomitan-gtk

go build github.com/themoeway/yomitan-import/yomitan
go build github.com/themoeway/yomitan-import/yomitan-gtk

mv yomitan yomitan-import
mv yomitan-gtk yomitan-import

tar czvf dst/yomitan-import_linux.tar.gz yomitan-import
