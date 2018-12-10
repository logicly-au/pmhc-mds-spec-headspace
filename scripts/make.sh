#!/bin/bash

# Exit if anything errors
set -e
# make zip file
scripts/metadata2zip.sh

# remove old zip file
rm -rf doc/_static/headspace-spec-meta.zip

# copy new zip to data-specification folder
#mv headspace-spec-meta.zip doc/_static/

docker pull docker.sdlocal.net/csvw/metadata2rst
docker run --rm -v `pwd`:/mnt/cwd docker.sdlocal.net/csvw/metadata2rst \
  --meta=headspace-metadata.json \
  --record_match "^Service|Metadata$"

pushd .

cd doc

rm -rf data-specification/_data build
cp -rf ../data data-specification/_data


GIT_VERSION=$(git describe --tags --always)

current_dir=`pwd`

echo "PWD=$current_dir"

pwd

docker pull stratdat/sphinx:production
docker run --rm -e GIT_VERSION -v `pwd`:/mnt/workdir \
  stratdat/sphinx:production make html singlehtml

popd

docker pull stratdat/sphinx-html2pdf:production
docker run --rm -e GIT_VERSION -v `pwd`:/mnt/workdir \
  stratdat/sphinx-html2pdf:production \
  /mnt/workdir/scripts/make-pdf.pl \
  --spec-name "PMHC-headspace" \
  --doc-dir   "/mnt/workdir/doc"
