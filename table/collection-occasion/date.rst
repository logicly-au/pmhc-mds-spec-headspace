For Date fields, data must be recorded in compliance with the standard format
used across the National Health Data Dictionary; specifically, dates must be
of fixed 8 column width in the format DDMMYYYY, with leading zeros used when
necessary to pad out a value. For instance, 13th March 2008 would appear as
13032008.

If the date the measure was given is unknown, 09099999 should be used.

- The measure date must not be before 1st January 2016.

- The measure date must not be before `PMHC MDS Episode - Referral Date <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#dfn-referral-date>`_

- The measure date must not be after `PMHC MDS Episode - End Date <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#dfn-episode-end-date>`_

- The measure date must not be in the future.
