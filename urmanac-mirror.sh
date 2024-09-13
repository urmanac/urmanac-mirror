#!/usr/bin/env bash

LOAD_COOKIES="--load-cookies=socryx-topled.arvo.network_cookies.txt"
WIKI_ROOT="https://socryx-topled.arvo.network/wiki/~/p/~bordex-ripdur/urmanac"
WIKI_HOT_ROOT="socryx-topled.arvo.network/wiki/~/p/~bordex-ripdur/urmanac/~/x/"
ASSET_ROOT="https://socryx-topled.arvo.network/wiki/~/assets"
ASSET_HOT_ROOT="socryx-topled.arvo.network/wiki/~/assets/"

wget $LOAD_COOKIES \
  --mirror --convert-links --adjust-extension --page-requisites \
  --no-parent \
  $WIKI_ROOT

mkdir -p $WIKI_HOT_ROOT

wget $LOAD_COOKIES \
  $WIKI_ROOT/~/x/logo
mv logo $WIKI_HOT_ROOT

wget $LOAD_COOKIES \
  --convert-links \
  $WIKI_ROOT/~/x/front
mv front $WIKI_HOT_ROOT

wget $LOAD_COOKIES \
  $ASSET_ROOT/logo.svg
mv logo.svg $ASSET_HOT_ROOT
