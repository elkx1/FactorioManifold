#!/bin/bash

set -e

# Get mod info from info.json
mod_name=$(perl -ne 'if (/"name":\s+"([^"]+)"/) { print("$1\n"); }' < src/info.json)
mod_version=$(perl -ne 'if (/"version":\s+"([^"]+)"/) { print("$1\n"); }' < src/info.json)

mod_dir_name="${mod_name}_${mod_version}"
mod_zip_name="${mod_dir_name}.zip"

# Create the zip
# Create a stash so that we get local changes in the working dir
stash_name=$(git stash create)
git stash store $stash_name # Store it so we can later call drop on it
git archive -o "releases/$mod_zip_name" --prefix "$mod_dir_name/" $stash_name:src
# Cleanup; really we should put this in an exit hook or something in case the above errors
git stash drop stash@{0}