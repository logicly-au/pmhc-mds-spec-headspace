.. _data-model-and-specifications:

Data model and specifications
=============================

headspace specifications are an extension of the Primary Mental Health Care Minimum Data Set (PMHC MDS);
the current PMHC MDS Data model and specification rules still apply. These are available to be viewed at
https://docs.pmhc-mds.com/projects/data-specification/en/latest/index.html.

.. _data-model:

Data model
----------

.. _data-model-diagram:

.. figure:: figures/data-model-v4.0.svg
   :alt: headspace v4.0 PMHC data model

   headspace data model *within the PMHC MDS*

**Note:** `PMHC MDS Collection Occasion records <https://docs.pmhc-mds.com/projects/data-specification/en/v4/data-model-and-specifications.html#collection-occasion-diagram>`_ for more details about
Collection Occasion records.

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

.. include:: shared/metadata-content.rst

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

Same as standard `PMHC MDS Service Contact <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#service-contact-data-elements>`_.

----------

.. _service-contact-practitioner-data-elements:

Service Contact Practitioner
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

See `PMHC MDS Service Contact Practitioner <https://docs.pmhc-mds.com/projects/data-specification/en/latest/data-model-and-specifications.html#service-contact-practitioner>`_ for definition of a service contact practitioner.

Service contacts practitioners are managed by headspace via upload.

.. csv-table:: Service contact practitioner record layout
   :file: record/service-contact-practitioner.csv
   :header-rows: 1

----------

.. _outcome-collection-occasion-data-elements:

Outcome Collection Occasion
^^^^^^^^^^^^^^^^^^^^^^^^^^^

See `PMHC MDS Outcome Collection Occasion <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#key-concepts-outcome-collection-occasion>`_ for a definitation of an outcome collection occasion.

Outcome Collection Occasions are managed by headspace via upload.

.. csv-table:: Collection Occasion record layout
   :file: record/collection-occasion.csv
   :header-rows: 1

.. _measure-data-elements:

Measures
^^^^^^^^

.. _episode_measures:

Measures during an Episode
""""""""""""""""""""""""""

.. _iar-dst-data-elements:

IAR-DST
'''''''

In the standard PMHC MDS data specification, the IAR-DST is recorded against the Intake record.
headspace do not have the same concept of Intake, so the IAR-DST is being recorded against the
Episode record.

.. csv-table:: IAR-DST record layout
   :file: record/iar-dst-measure.csv
   :header-rows: 1


.. _k10p-data-elements:

K10+
""""

Same as standard `PMHC MDS K10+ <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#k10p-data-elements>`_.

.. _k5-data-elements:

K5
""

Same as standard `PMHC MDS K10+ <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#k105-data-elements>`_.

.. _sdq-data-elements:

SDQ
"""

Same as standard `PMHC MDS K10+ <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#sdq-data-elements>`_.

----------

.. include:: include/definitions.rst


.. _data-specifications-download:

Download Specification Files
----------------------------

Available for software developers designing extracts for the PMHC MDS, please
click the link below to download the PMHC MDS Specification files:

* `Specification zip <../_static/pmhcmds-spec-headspace-meta.zip>`_

These files conform to the CSV on the Web (CSVW) standard that is defined at https://csvw.org/.

They are used:

* to generate the :ref:`record-formats` and :ref:`definitions` sections of the data specification documentation
* in the first pass of upload validations
