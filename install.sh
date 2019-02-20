#!/bin/bash

set -e

./mkrelease.sh

# Get mod info from info.json
mod_name=$(perl -ne 'if (/"name":\s+"([^"]+)"/) { print("$1\n"); }' < src/info.json)
mod_version=$(perl -ne 'if (/"version":\s+"([^"]+)"/) { print("$1\n"); }' < src/info.json)

mod_zip_name="${mod_name}_${mod_version}.zip"

cp "releases/$mod_zip_name" "$APPDATA/Factorio/mods"