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

.. _service-contact-data-elements:

Service Contact
^^^^^^^^^^^^^^^

See `PMHC MDS Service Contact <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#service-contact-data-elements>`_ for definition of a service contact.

Service contacts are managed by headspace via upload.

.. csv-table:: Service contact record layout
   :file: record/service-contact.csv
   :header-rows: 1

----------

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
| type         | nspt       |
+--------------+------------+
| version      | 1          |
+--------------+------------+

.. _pmhc-data-elements:

PMHC MDS Record Formats
~~~~~~~~~~~~~~~~~~~~~~~

As the NSPT is an extension of the Primary Mental Health Care Minimum Data Set
(PMHC MDS), the current PMHC MDS Data model and specification record formats are
available to be viewed at https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#record-formats.

----------

.. include:: include/definitions.rst


.. _data-specifications-download:

Download Specification Files
----------------------------

Available for software developers designing extracts for the PMHC MDS, please
click the link below to download the PMHC MDS Specification files:

* `Specification zip <../_static/pmhcmds-spec-meta.zip>`_
