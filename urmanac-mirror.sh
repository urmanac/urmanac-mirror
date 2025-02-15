#!/usr/bin/env bash

source .env

wget $LOAD_COOKIES \
  --mirror --convert-links --adjust-extension --page-requisites \
  --no-parent \
  $WIKI_ROOT

mkdir -p $WIKI_HOT_ROOT

wget $LOAD_COOKIES \
  $WIKI_ROOT/~/x/logo
mv logo $WIKI_HOT_ROOT

wget $LOAD_COOKIES \
  $WIKI_ROOT/~/x/front
mv front $WIKI_HOT_ROOT

wget $LOAD_COOKIES \
  $ASSET_ROOT/logo.svg
mv logo.svg $ASSET_HOT_ROOT
