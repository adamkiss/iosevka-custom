#!/usr/bin/env bash

set -eux

rm -fr dist/font-iosevka-ak && mkdir -p dist/font-iosevka-ak

for f in dist/iosevka-ak/ttf/iosevka-*.ttf; do
	case $f in
		*oblique.ttf)
			echo "skipping oblique file: $f";;
		*)
			filename=${f/dist\/iosevka-ak\/ttf\/}
			cp -f $f "dist/font-iosevka-ak/$filename";;
	esac
done

cp -fr dist/font-iosevka-ak ~/Library/Fonts/iosevka-ak
