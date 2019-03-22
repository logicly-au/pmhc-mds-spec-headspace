.. _data-model-and-specifications:

Data model and specifications
=============================

headspace specifications are an extension of the Primary Mental Health Care Minimum Data Set (PMHC MDS);
the current PMHC MDS Data model and specification rules still apply. These are available to be viewed at
https://docs.pmhc-mds.com/data-specification/index.html.

.. _data-model:

Data model
----------

.. _data-model-diagram:

.. figure:: figures/data-model.svg
   :alt: headspace PMHC data model

   headspace data model *within the PMHC MDS*

.. _record-formats:

Record formats
--------------

.. _metadata-data-elements:

Metadata
^^^^^^^^

The Metadata table must be included in file uploads in order to identify
the type and version of the uploaded data.

.. csv-table:: Metadata record layout
   :file: record/metadata.csv
   :header-rows: 1

For this version of the specification the required content is shown in the
following table:

+--------------+------------+
| key          | value      |
+--------------+------------+
| type         | headspace  |
+--------------+------------+
| version      | 2          |
+--------------+------------+

----------

.. _provider-organisation-data-elements:

Provider Organisation
^^^^^^^^^^^^^^^^^^^^^

Same as standard `PMHC MDS Provider Organisation <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#provider-organisation-data-elements>`_.

----------

.. _practitioner-data-elements:

Practitioner
^^^^^^^^^^^^

Same as standard `PMHC MDS Practitioner <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#practitioner-data-elements>`_.

----------

.. _client-data-elements:

Client
^^^^^^

Same as standard `PMHC MDS Client <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#client-data-elements>`_.

----------

.. _episode-data-elements:

Episode
^^^^^^^

Same as standard `PMHC MDS Episode <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#episode-data-elements>`_.

----------

.. _service-contact-data-elements:

Service Contact
^^^^^^^^^^^^^^^

See `PMHC MDS Service Contact <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#key-concepts-service-contact>`_ for definition of a service contact.

Service contacts are managed by headspace via upload.

.. csv-table:: Service contact record layout
   :file: record/service-contact.csv
   :header-rows: 1

----------

.. _outcome-collection-occasion-data-elements:

Outcome Collection Occasion
^^^^^^^^^^^^^^^^^^^^^^^^^^^

See `PMHC MDS Outcome Collection Occasion <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#outcome-collection-occasion-data-elements>`_.

----------

.. include:: include/definitions.rst


.. _data-specifications-download:

Download Specification Files
----------------------------

Available for software developers designing extracts for the PMHC MDS, please
click the link below to download the PMHC MDS Specification files:

* `Specification zip <../_static/pmhcmds-spec-meta.zip>`_
