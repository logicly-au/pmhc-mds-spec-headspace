# Status

TODO RTD Status

# Usage

## Build the documentation

```
./scripts/make.sh
```
This will:

* create restructured text from the metadata files
* move generated content into the correct locations
* create zip of spec metadata (csv + json files) 
* run sphinx to generate the html output in doc/build/html


## Publish to https://docs.pmhc-mds.com

Run the following script to publish the locally built content (see above).

```
./scripts/publish.sh
```


## Docker

If you need to build and push a new image containing the tools to convert
metadata to restructured text see the csvw-metadata2rst repo.

https://gh.sdintra.net/PMHC/csvw-metadata2rst



## Commands useful for checking integrity/completeness of schema files

Find files referenced files that don't exist:
```
cat headspace-metadata.json | grep tableSchema | cut -d: -f2 | sort | uniq | xargs -n1 -I{} cat {} > /dev/null
```

## Commands useful for validating example files

Refer to csvlint/README.md

## Commands useful for creating xlsx Files
```
./scripts/csv2xlsx.pl --context=intake doc/_static/example-files/
./scripts/csv2xlsx.pl --context=treatment doc/_static/example-files/
./scripts/csv2xlsx.pl --context=combined doc/_static/example-files/
./scripts/csv2xlsx.pl --delete doc/_static/example-files/
```
