.. _upload_specification:

Upload specification
====================

The headspace files/worksheets are an extension to the PMHC MDS. Files can be uploaded to the 
PMHC MDS manually via the web interface at https://pmhc-mds.net/ or
by using the API which is available at https://api.pmhc-mds.net/.

.. _file-requirements:

File requirements
-----------------

Please refer to `PMHC MDS File types <https://docs.pmhc-mds.com/projects/data-specification/en/v4/upload-specification.html#file-requirements>`_.

.. _files-to-upload:

Files or worksheets to upload
-----------------------------

All files must be internally consistent. An example of what this means
is that for every HeadtoHelp episode, service contact and measures in an upload file,
there must be a corresponding episode in the episodes file/worksheet.
It also means that for every row in the episodes file/worksheet, there must be a
corresponding client in the clients file/worksheet.

The following files/worksheets must be uploaded to the PMHC MDS as part of the
headspace data specification:

.. csv-table:: Summary of files to upload
  :file: upload-file-types.csv
  :header-rows: 1

Example upload files can be found at :ref:`example-upload-files`.

.. _file-format:

File format
-----------

Same as standard `PMHC MDS File format <https://docs.pmhc-mds.com/projects/data-specification/en/v4/upload-specification.html#file-format>`_.

.. _metadata-format:

Metadata file
^^^^^^^^^^^^^

All headspace version 4.0 data uploads must include a Metadata file/worksheet.
- In the first row, the first cell must contain 'key' and the second cell must contain 'value'
- In the second row, the first cell must contain 'type' and the second cell must contain 'HEADSPACE'
- In the third row, the first cell must contain 'version' and the second cell must contain '4.0'

i.e.:

.. include:: shared/metadata-content.rst

Data elements for the headspace metadata upload file/worksheet are defined at
:ref:`metadata-data-elements`.

Example Metadata files can be found at :ref:`example-upload-files`.

.. _organisation-format:

Organisation file format
^^^^^^^^^^^^^^^^^^^^^^^^

Same as standard `PMHC MDS Organisation file format <https://docs.pmhc-mds.com/projects/data-specification/en/v4/upload-specification.html#organisation-file-format>`_.

Example Organisation files can be found in the example files at :ref:`example-upload-files`.

.. _client-format:

Client format
^^^^^^^^^^^^^

Same as standard `PMHC MDS Client file format <https://docs.pmhc-mds.com/projects/data-specification/en/v4/upload-specification.html#client-format>`_.

Example Client files can be found in the example files at :ref:`example-upload-files`.

.. _intake-format:

Intake format
^^^^^^^^^^^^^

Same as standard `PMHC MDS Intake file format <https://docs.pmhc-mds.com/projects/data-specification/en/v4/upload-specification.html#intake-format>`_.

Example Intake files can be found in the example files at :ref:`example-upload-files`.

.. _iar-dst-format:

IAR-DST format
^^^^^^^^^^^^^^

Same as standard `PMHC MDS IAR-DST file format <https://docs.pmhc-mds.com/projects/data-specification/en/v4/upload-specification.html#iar-dst-format>`_.

Example IAR-DST files can be found in the example files at :ref:`example-upload-files`.

.. _intake-episode-format:

Intake Episode format
^^^^^^^^^^^^^^^^^^^^^

Same as standard `PMHC MDS Intake Episode file format <https://docs.pmhc-mds.com/projects/data-specification/en/v4/upload-specification.html#intake-episode-format>`_.

Example Intake Episode files can be found in the example files at :ref:`example-upload-files`.

.. _episode-format:

Episode file format
^^^^^^^^^^^^^^^^^^^

The episode file/worksheet is required to be uploaded each time.

Data elements for the episode upload file/worksheet are defined at
:ref:`episode-data-elements`.

Example Episode files can be found in the example files at :ref:`example-upload-files`.

.. _service-contact-format:

Service Contact file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^

The service contact file/worksheet is required to be uploaded each time.

Data elements for the service contact upload file/worksheet are defined at
:ref:`service-contact-data-elements`.

Example Service Contact files can be found in the example files at :ref:`example-upload-files`.

.. _service-contact-practitioner-format:

Service Contact Practitioner file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The service contact practitioner file/worksheet is required to be uploaded each time.

Data elements for the service contact practitioner upload file/worksheet are defined at
:ref:`service-contact-practitioner-data-elements`.

Example Service Contact Practitioner files can be found in the example files at :ref:`example-upload-files`.

.. _collection-occasion-format:

Collection Occasion file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The collection occasion file/worksheet is required to be uploaded each time.

Data elements for the collection occasion upload file/worksheet are defined at
:ref:`collection-occasion-data-elements`.

Example Collection Occasion files can be found in the example files at :ref:`example-upload-files`.

.. _k10p-format:

K10+ Collection Occasion file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Same as standard `PMHC MDS K10+ file format <https://docs.pmhc-mds.com/projects/data-specification/en/v4/upload-specification.html#k10p-format>`_.

Example K10+ files can be found in any of the example files at :ref:`example-upload-files`.

.. _k5-format:

K5 Collection Occasion file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Same as standard `PMHC MDS K5 file format <https://docs.pmhc-mds.com/projects/data-specification/en/v4/upload-specification.html#k5-format>`_.

Example K5 files can be found in any of the example files at :ref:`example-upload-files`.

.. _sdq-format:

SDQ Collection Occasion file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Same as standard `PMHC MDS SDQ file format <https://docs.pmhc-mds.com/projects/data-specification/en/v4/upload-specification.html#sdq-format>`_.

Example SDQ files can be found in any of the example files at :ref:`example-upload-files`.

.. _practitioner-format:

Practitioner file format
^^^^^^^^^^^^^^^^^^^^^^^^

Same as standard `PMHC MDS Practitioner file format <https://docs.pmhc-mds.com/projects/data-specification/en/v4/upload-specification.html#practitioner-format>`_.

Example Practitioner files can be found in any of the example files at :ref:`example-upload-files`.

.. _example-upload-files:

Example Upload files
--------------------

Each of the example files assumes the following organisation structure:

+------------------+-------------------------------+---------------------------------------------+---------------------+
| Organisation Key | Organisation Name             | Organisation Type                           | Parent Organisation |
+==================+===============================+=============================================+=====================+
| PHN999           | Test PHN                      | Primary Health Network                      | None                |
+------------------+-------------------------------+---------------------------------------------+---------------------+
| NFP01            | Test 01 Provider Organisation | Headspace Centre                            | PHN999              |
+------------------+-------------------------------+---------------------------------------------+---------------------+
| NFP02            | Test 02 Provider Organisation | Headspace Centre                            | PHN999              |
+------------------+-------------------------------+---------------------------------------------+---------------------+

.. csv-table:: Summary of example upload files
  :file: example-files.csv
  :header-rows: 1


.. _deleting-records:

Deleting records
^^^^^^^^^^^^^^^^

Please refer to `PMHC MDS Deleting records <https://docs.pmhc-mds.com/projects/data-specification/en/v4/upload-specification.html#deleting-records>`_

Example files showing how to delete via upload:

- `XLSX file containing all the worksheets <../_static/example-files/headspace-4-0-delete.xlsx>`_.
- `CSV zip containing all the csv files  <_static/example-files/headspace-4-0-delete.zip>`_.

Frequently Asked Questions
--------------------------

Please also refer to `Uploading data <https://docs.pmhc-mds.com/projects/user-documentation/en/latest/faqs/system/uploading.html#uploading-data-faqs>`_ for answers to frequently
asked questions about uploading data.
