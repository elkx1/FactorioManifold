#!/bin/bash

set -e
set -x

# Get mod info from info.json
mod_name=$(perl -ne 'if (/"name":\s+"([^"]+)"/) { print("$1\n"); }' < src/info.json)
mod_version=$(perl -ne 'if (/"version":\s+"([^"]+)"/) { print("$1\n"); }' < src/info.json)

mod_dir_name="${mod_name}_${mod_version}"
mod_zip_name="${mod_dir_name}.zip"

function archive() {
	ref=$1
	# Create the zip
	git archive -o "releases/$mod_zip_name" --prefix "$mod_dir_name/" "$ref":src
}

if git diff-index --quiet HEAD --; then
	# No changes
	archive HEAD
else
	# There are working dir changes
	# Create a stash so that we get local changes in the working dir
	stash_name=$(git stash create --all)
	git stash store $stash_name # Store it so we can later call drop on it
	archive $stash_name
	# Cleanup; really we should put this in an exit hook or something in case the above errors
	git stash drop stash@{0}
fi
