.. _upload_specification:

Upload specification
====================

The headspace files/worksheets are an extension to the PMHC MDS.

.. _file-types:

File types
----------

Please refer to `PMHC MDS File types <https://docs.pmhc-mds.com/data-specification/upload-specification.html#file-types>`_.

.. _files-to-upload:

Files or worksheets to upload
-----------------------------
The headspace upload format is slightly different to the PMHC MDS standard format.
Files and worksheets in the PMHC MDS standard format require the first line
of each file to have a version number. The headspace upload format removes this line
from each file/worksheet and replaces it with a new metadata file/worksheet.

The following files/worksheets can be uploaded to the PMHC MDS as part of the
headspace data specification:

.. csv-table:: Summary of files to upload
  :file: upload-file-types.csv
  :header-rows: 1

Each of the example files assumes the following organisation structure:

+------------------+----------------------------+---------------------------------------------+---------------------+
| Organisation Key | Organisation Name          | Organisation Type                           | Parent Organisation |
+==================+============================+=============================================+=====================+
| PHN999           | Test PHN                   | Primary Health Network                      | None                |
+------------------+----------------------------+---------------------------------------------+---------------------+
| NFP01            | Test Provider Organisation | Headspace Centre                            | PHN999              |
+------------------+----------------------------+---------------------------------------------+---------------------+

.. _file-format:

File format
-----------

Requirements for file formats:

- The first row must contain the column headings as defined for each file type.
- Each item is a column in the file/worksheet. The 'Field Name' must be used for
  the column headings. The columns must be kept in the same order.
- The second and subsequent rows must contain the data.
- Data elements for each file/worksheet are defined at :ref:`record-formats`.
- All files must be internally consistent. An example of what this means is
  that for every row in the episode file/worksheet, there must be a
  corresponding client in the client file/worksheet.

All headspace data uploads must include a Metadata file/worksheet. See :ref:`headspace-metadata-format`.

.. _headspace-metadata-format:

headspace Metadata file
^^^^^^^^^^^^^^^^^^^^^^^

All headspace data uploads must include a Metadata file/worksheet.
- In the first row, the first cell must contain 'key' and the second cell must contain 'value'
- In the second row, the first cell must contain 'type' and the second cell must contain 'headspace'
- In the third row, the first cell must contain 'version' and the second cell must contain '2'

i.e.:

+--------------+------------+
| key          | value      |
+--------------+------------+
| type         | headspace  |
+--------------+------------+
| version      | 2          |
+--------------+------------+

Data elements for the headspace metadata upload file/worksheet are defined at
:ref:`metadata-data-elements`.

Example headspace metadata data:

.. This is a comment. headspace metadata validation rules required!

- `CSV headspace metadata file <../_static/metadata.csv>`_.
- `XLSX headspace metadata worksheet <../_static/headspace-metadata-upload.xlsx>`_.

.. _client-format:

Client format
^^^^^^^^^^^^^
The client file/worksheet is required to be uploaded each time.

Data elements for the client upload file/worksheet are defined at
`PMHC MDS Client <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#client-data-elements>`_.

Example client data:

- `CSV client file <../_static/clients.csv>`_.
- `XLSX client worksheet <../_static/headspace-clients-upload.xlsx>`_.

.. _episode-format:

Episode file format
^^^^^^^^^^^^^^^^^^^
The episode file/worksheet is required to be uploaded each time.

Data elements for the episode upload file/worksheet are defined at
`PMHC MDS Episode <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#episode-data-elements>`_.

Example episode data:

- `CSV episode file <../_static/episodes.csv>`_.
- `XLSX episode worksheet <../_static/headspace-episodes-upload.xlsx>`_.

.. _service-contact-format:

Service Contact file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^
The service contact file/worksheet is required to be uploaded each time.

Data elements for the service contact upload file/worksheet are defined at
:ref:`service-contact-data-elements`.

Example service contact data:

- `CSV service contact file <../_static/service-contacts.csv>`_.
- `XLSX service contact worksheet <../_static/headspace-service-contacts-upload.xlsx>`_.

.. _k10p-format:

K10+ Collection Occasion file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The K10+ file/worksheet is required to be uploaded each time.

Data elements for the K10+ collection occasion upload file/worksheet are defined
at `PMHC MDS K10+ <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#outcome-collection-occasion-data-elements>`_.

Example K10+ data:

- `CSV K10+ file <../_static/k10p.csv>`_.
- `XLSX K10+ worksheet <../_static/headspace-k10p-upload.xlsx>`_.

.. _k5-format:

K5 Collection Occasion file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The K5 file/worksheet is required to be uploaded each time.

Data elements for the K5 collection occasion upload file/worksheet are defined
at `PMHC MDS K5 <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#outcome-collection-occasion-data-elements>`_.

Example K5 data:

- `CSV K5 file <../_static/k5.csv>`_.
- `XLSX K5 worksheet <../_static/headspace-k5-upload.xlsx>`_.

.. _sdq-format:

SDQ Collection Occasion file format
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
The SDQ file/worksheet is required to be uploaded each time.

Data elements for the SDQ collection occasion upload file/worksheet are defined
at `PMHC MDS SDQ <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#outcome-collection-occasion-data-elements>`_.

Example SDQ data:

- `CSV SDQ file <../_static/sdq.csv>`_.
- `XLSX SDQ worksheet <../_static/headspace-sdq-upload.xlsx>`_.

.. _practitioner-format:

Practitioner file format
^^^^^^^^^^^^^^^^^^^^^^^^
The practitioner file/worksheet is required for the first upload and if there
is a change in practitioners. It is optional otherwise.  There is no harm in
including it in every upload.

Data elements for the practitioner upload file/worksheet are defined at
`PMHC MDS Practitioner <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#practitioner-data-elements>`_.

Example practitioner data:

- `CSV practitioner file <../_static/practitioners.csv>`_.
- `XLSX practitioner worksheet <../_static/headspace-practitioners-upload.xlsx>`_.

.. _organisation-format:

Organisation file format
^^^^^^^^^^^^^^^^^^^^^^^^
This file is for PHN use only. The organisation file/worksheet is optional. It can
be included to upload Provider Organisations in bulk or if there is a change in
Provider Organisation details. There is no harm in including it in every upload.

Data elements for the Provider Organisation upload file/worksheet are defined at
`PMHC MDS Provider Organisation <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#provider-organisation-data-elements>`_.

Example organisation data:

- `CSV organisation file <../_static/organisations.csv>`_.
- `XLSX organisation worksheet <../_static/headspace-organisations-upload.xlsx>`_.

.. _deleting-records:

Deleting records
^^^^^^^^^^^^^^^^

Please refer to `PMHC MDS Deleting records <https://docs.pmhc-mds.com/data-specification/upload-specification.html#deleting-records>`_

Example files showing how to delete via upload:

- `XLSX file containing all the worksheets <../_static/headspace-upload-delete.xlsx>`_.
