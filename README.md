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
* create zip of spec metadata (csv + json files) inside data-specification
* run sphinx to generate the html output in doc/build/html


## Publish to https://docs.pmhc-mds.com

Run the following script to publish the locally built content (see above).

```
./scripts/publish.sh
```
