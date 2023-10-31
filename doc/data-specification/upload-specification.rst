.. _upload_specification:

Upload specification
====================

The headspace files/worksheets are an extension to the PMHC MDS.

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
This file is for PHN use only. The organisation file/worksheet is optional. It can
be included to upload Provider Organisations in bulk or if there is a change in
Provider Organisation details. There is no harm in including it in every upload.

Data elements for the Provider Organisation upload file/worksheet are defined at
`PMHC MDS Provider Organisation <https://docs.pmhc-mds.com/projects/data-specification/en/v4/data-model-and-specifications.html#provider-organisation-data-elements>`_..

Example Organisation files can be found in the example files at :ref:`example-upload-files`.

.. _client-format:

Client format
^^^^^^^^^^^^^
The client file/worksheet is required to be uploaded each time.

Data elements for the client upload file/worksheet are defined at
`PMHC MDS Client <https://docs.pmhc-mds.com/projects/data-specification/en/v4/data-model-and-specifications.html#client-data-elements>`_.

Example Client files can be found in the example files at :ref:`example-upload-files`.

.. _episode-format:

Episode file format
^^^^^^^^^^^^^^^^^^^
The episode file/worksheet is required to be uploaded each time.

Data elements for the episode upload file/worksheet are defined at
`PMHC MDS Episode <https://docs.pmhc-mds.com/projects/data-specification/en/v4/data-model-and-specifications.html#episode-data-elements>`_.

Example Episode files can be found in any of the example files at :ref:`example-upload-files`.

IAR-DST format
^^^^^^^^^^^^^^
The IAR-DST file/worksheet is required to be uploaded each time in the intake
or combined intake/treatment service provider contexts.

Data elements for the IAR-DST upload file/worksheet are defined at
:ref:`iar-dst-data-elements`.

Example IAR-DST files can be found in the example files
at :ref:`example-upload-files`.

.. _service-contact-format:

Service Contact file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^
The service contact file/worksheet is required to be uploaded each time.

Data elements for the service contact upload file/worksheet are defined at
`PMHC MDS Service Contact <https://docs.pmhc-mds.com/projects/data-specification/en/v4/data-model-and-specifications.html#service-contact-data-elements>`_.

.. _service-contact-practitioner-format:

Service Contact Practitioner file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The service contact practitioner file/worksheet is required to be uploaded
each time in the treatment service provider or combined contexts.

Data elements for the service contact practitioner upload file/worksheet are defined at
:ref:`service-contact-practitioner-data-elements`.

Example Service Contact Practitioner files can be found in the 
example files at :ref:`example-upload-files`.

.. _collection-occasion-format:

Collection Occasion file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The collection occasion file/worksheet is required to be uploaded
each time in the treatment service provider or combined contexts.

Data elements for the collection occasion upload file/worksheet are defined at
:ref:`collection-occasion-data-elements`.

Example Collection Occasion files can be found in the 
example files at :ref:`example-upload-files`.

.. _k10p-format:

K10+ Collection Occasion file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The K10+ file/worksheet is required to be uploaded each time.

Data elements for the K10+ collection occasion upload file/worksheet are defined
at `PMHC MDS K10+ <https://docs.pmhc-mds.com/projects/data-specification/en/v4/data-model-and-specifications.html#outcome-collection-occasion-data-elements>`_.

Example K10+ files can be found in the 
example files at :ref:`example-upload-files`.

.. _k5-format:

K5 Collection Occasion file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The K5 file/worksheet is required to be uploaded each time.

Data elements for the K5 collection occasion upload file/worksheet are defined
at `PMHC MDS K5 <https://docs.pmhc-mds.com/projects/data-specification/en/v4/data-model-and-specifications.html#outcome-collection-occasion-data-elements>`_.

Example K5 files can be found in the 
example files at :ref:`example-upload-files`.

.. _sdq-format:

SDQ Collection Occasion file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The SDQ file/worksheet is required to be uploaded each time.

Data elements for the SDQ collection occasion upload file/worksheet are defined
at `PMHC MDS SDQ <https://docs.pmhc-mds.com/projects/data-specification/en/v4/data-model-and-specifications.html#outcome-collection-occasion-data-elements>`_.

Example SDQ files can be found in the 
example files at :ref:`example-upload-files`.

.. _practitioner-format:

Practitioner file format
^^^^^^^^^^^^^^^^^^^^^^^^
The practitioner file/worksheet is required for the first upload and if there
is a change in practitioners. It is optional otherwise.  There is no harm in
including it in every upload.

Data elements for the practitioner upload file/worksheet are defined at
`PMHC MDS Practitioner <https://docs.pmhc-mds.com/projects/data-specification/en/v4/data-model-and-specifications.html#practitioner-data-elements>`_.

Example SDQ files can be found in the 
example files at :ref:`example-upload-files`.

.. _example-upload-files:

Example Upload files
--------------------

Each of the example files assumes the following organisation structure:

+------------------+----------------------------+---------------------------------------------+---------------------+
| Organisation Key | Organisation Name          | Organisation Type                           | Parent Organisation |
+==================+============================+=============================================+=====================+
| PHN999           | Test PHN                   | Primary Health Network                      | None                |
+------------------+----------------------------+---------------------------------------------+---------------------+
| NFP01            | Test Provider Organisation | Headspace Centre                            | PHN999              |
+------------------+----------------------------+---------------------------------------------+---------------------+

- `XLSX file containing all the worksheets <../_static/headspace-upload.xlsx>`_.
- `CSV zip containing all the csv files  <_static/example-files/PMHC-4-0-combined-delete.zip>`_.

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
