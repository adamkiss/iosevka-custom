#!/usr/bin/env bash

set -eux

mkdir -p dist

for f in iosevka-repo/dist/iosevka-ak-*/ttf/iosevka-*.ttf; do
	case $f in
		*oblique.ttf)
			echo "skipping oblique file: $f";;
		*)
			filename=${f/iosevka-repo\/dist\/iosevka-ak-*\/ttf\/}
			cp -f $f "dist/$filename";;
	esac
done

TARGET="$HOME/Library/Fonts/Iosevka AK"
rm -fr "$TARGET"
mkdir -p "$TARGET"
cp -fr dist/* "$TARGET"
