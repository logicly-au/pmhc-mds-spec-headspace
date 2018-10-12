#!/bin/bash

# Exit if anything errors
set -e
# make zip file
scripts/metadata2zip.sh

# remove old zip file
rm -rf doc/_static/headspace-spec-meta.zip

# copy new zip to data-specification folder
#mv headspace-spec-meta.zip doc/_static/

docker run --rm -v `pwd`:/mnt/cwd docker.sdlocal.net/csvw/metadata2rst \
  --meta=headspace-metadata.json \
  --record_match "^Service|Metadata$"

pushd .

cd doc

rm -rf data-specification/_data build
cp -rf ../data data-specification/_data

if [ -z $1 ]; then
  ARG1=html
else
  ARG1=$1
fi

GIT_VERSION=$(git describe --tags --always)

current_dir=`pwd`

echo "PWD=$current_dir"

pwd

docker run -e GIT_VERSION -v `pwd`:/mnt/workdir stratdat/sphinx:production make $ARG1

popd
