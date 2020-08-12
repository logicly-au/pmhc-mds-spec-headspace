#!/usr/bin/env bash

git remote | grep -q publish

if [[ "$?" == "0" ]]; then
  git remote remove publish
fi

git remote add origin git@github.com:strategicdata/pmhc-mds-spec-headspace.git

git push publish
