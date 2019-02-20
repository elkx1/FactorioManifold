#!/bin/bash

set -e

# Get mod info from info.json
mod_name=$(perl -ne 'if (/"name":\s+"([^"]+)"/) { print("$1\n"); }' < src/info.json)
mod_version=$(perl -ne 'if (/"version":\s+"([^"]+)"/) { print("$1\n"); }' < src/info.json)

mod_dir_name="${mod_name}_${mod_version}"
mod_zip_name="${mod_dir_name}.zip"

# Create the zip
git archive -o "releases/$mod_zip_name" --prefix "$mod_dir_name/" HEAD:src