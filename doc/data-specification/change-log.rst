.. _data_spec_changelog:

Data Specification Change log
=============================

17/6/2019 - Version 2.0
-----------------------

* :ref:`data-model-and-specifications`

  * :ref:`record-formats`

    * :ref:`metadata-data-elements`

      * Updated the version to 2

    * :ref:`provider-organisation-data-elements`

      * Removed Organisation Status (See `PMHC MDS Provider Organisation <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#provider-organisation-data-elements>`_)

      * Added Provider Organisation - Start Date (See `PMHC MDS Provider Organisation <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#provider-organisation-data-elements>`_)

      * Added Provider Organisation - End Date (See `PMHC MDS Provider Organisation <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#provider-organisation-data-elements>`_)

    * :ref:`episode-data-elements`

      * Added Episode - Continuity of Support (See `PMHC MDS Episode <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#episode-data-elements>`_)

    * :ref:`service-contact-data-elements`

      * Renamed headspace Funding Source to :ref:`dfn-funding_source`

      * Updated :ref:`dfn-funding_source` to add response 0 - PHN funded. **Note: This response should not be used for headspace uploads**


      * Added :ref:`dfn-delivery_organisation_path`

    * :ref:`k10p-data-elements`

      * Added :ref:`dfn-delivery_organisation_path`

    * :ref:`k5-data-elements`

      * Added :ref:`dfn-delivery_organisation_path`

    * :ref:`sdq-data-elements`

      * Added :ref:`dfn-delivery_organisation_path`

* :ref:`upload_specification`

  * :ref:`headspace-metadata-format`

    * Updated the version to 2

1/1/2019 - Version 1.0.1
------------------------

* :ref:`data-model-and-specifications`

  * :ref:`record-formats`

    * :ref:`service-contact-data-elements`

      * Updated :ref:`dfn-service_contact_type` to add response
        9 - Psychosocial support.

      * Updated :ref:`dfn-service_contact_venue` to change response 8 from
        'Aged care centre' to 'Residential aged care facility'.

      * Updated :ref:`dfn-service_contact_venue` to add response
        12 - Aged care centre - non-residential.

12/10/2018
----------

* Initial release.
