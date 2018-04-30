#!/usr/bin/env sh

set -eux

rm -f ./dist
rm -fr ./iosevka-repo
git clone https://github.com/be5invis/Iosevka.git iosevka-repo --depth=1

cd iosevka-repo
npm install
cd ..
