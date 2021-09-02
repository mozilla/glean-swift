#!/usr/bin/env bash
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# Publish a new Glean Swift release.
#
# Optionally, it can create the release commit and tag it.
#
# Usage: prepare-release.sh <new version>
#
# Environment:
#
# DRY_RUN - Do not modify files or run destructive commands when set.
# VERB    - Log commands that are run when set.

set -xeo pipefail

run() {
  [ "${VERB:-0}" != 0 ] && echo "+ $*"
  if [ "$DOIT" = y ]; then
      "$@"
  else
      true
  fi
}

# All sed commands below work with either
# GNU sed (standard on Linux distrubtions) or BSD sed (standard on macOS)
SED="sed"

WORKSPACE_ROOT="$( cd "$(dirname "$0")/.." ; pwd -P )"

if [ -z "$1" ]; then
    echo "Usage: $(basename "$0") <new version>"
    echo
    echo "Publish a new Glean Swift release."
    exit 1
fi

NEW_VERSION="$1"
DATE=$(date +%Y-%m-%d)

if ! echo "$NEW_VERSION" | grep --quiet --extended-regexp '^[0-9]+\.[0-9]+\.[0-9]+(-[a-z0-9.-]+)?$'; then
    echo "error: Specified version '${NEW_VERSION}' doesn't match the Semantic Versioning pattern."
    echo "error: Use MAJOR.MINOR.PATCH versioning."
    echo "error: See https://semver.org/"
    exit 1
fi

echo "Preparing update to v${NEW_VERSION} (${DATE})"
echo "Workspace root: ${WORKSPACE_ROOT}"
echo

GIT_STATUS_OUTPUT=$(git status --untracked-files=no --porcelain)
if [ -z "$ALLOW_DIRTY" ] && [ -n "${GIT_STATUS_OUTPUT}" ]; then
    lines=$(echo "$GIT_STATUS_OUTPUT" | wc -l | tr -d '[:space:]')
    echo "error: ${lines} files in the working directory contain changes that were not yet committed into git:"
    echo
    echo "${GIT_STATUS_OUTPUT}"
    echo
    echo 'To proceed despite this and include the uncommited changes, set the `ALLOW_DIRTY` environment variable.'
    exit 1

fi

DOIT=y
if [[ -n "$DRY_RUN" ]]; then
    echo "Dry-run. Not modifying files."
    DOIT=n
fi

url="https://github.com/mozilla/glean/releases/download/v${NEW_VERSION}/Glean.xcframework.zip"
echo "Release URL: ${url}"

if [ ! -f "Glean.xcframework.zip" ]; then
    curl -sfSL --retry 5 -O "$url"
fi

# Equivalent to `swift package compute-checksum $package`,
# but works without having Swift.
checksum=$(shasum -a 256 Glean.xcframework.zip | awk '{print $1}')
echo "Checksum: ${checksum}"

FILE=Package.swift
run $SED -i.bak -E \
    -e "s/^let version = \"[0-9a-z.-]+\"/let version = \"${NEW_VERSION}\"/" \
    -e "s/^let checksum = \"[0-9a-z.-]+\"/let checksum = \"${checksum}\"/" \
    "${WORKSPACE_ROOT}/${FILE}"
run rm "${WORKSPACE_ROOT}/${FILE}.bak"

echo "Everything prepared for v${NEW_VERSION}"
echo
echo "Changed files:"
git status --untracked-files=no --porcelain || true
echo
echo "Creating release commit & tag for v${NEW_VERSION} now."

run git add --update "${WORKSPACE_ROOT}"
run git commit --message "Bumped version to ${NEW_VERSION}"
run git tag --annotate "${NEW_VERSION}" -m "v${NEW_VERSION}"

if git remote | grep -q upstream; then
    remote=upstream
else
    remote=origin
fi
branch=$(git rev-parse --abbrev-ref HEAD)

echo "Don't forget to push this commit & tag:"
echo
echo "    git push $remote $branch"
echo "    git push $remote ${NEW_VERSION}"
