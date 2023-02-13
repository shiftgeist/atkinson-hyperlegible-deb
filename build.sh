#!/usr/bin/env bash

VERSION=1.0-1
FONT=atkinson-hyperlegible

mkdir -p target/usr/share/fonts/opentype/$FONT
mkdir -p target/usr/share/fonts/truetype/$FONT
cp -r fonts/otf/* target/usr/share/fonts/opentype/$FONT
cp -r fonts/ttf/* target/usr/share/fonts/truetype/$FONT

dpkg-deb --build target
mv target.deb font-$FONT\_$VERSION.deb

rm -r target/usr
