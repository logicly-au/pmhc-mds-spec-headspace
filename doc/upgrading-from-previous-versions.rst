.. _changes-from-v4:

Changes from Version 4.0
========================

Version 4.1 introduces the recording of sites within a Provider Organisation.

A `Sites <https://docs.pmhc-mds.com/projects/data-specification/en/v4.1/data-model-and-specifications.html#sites>`_ field has been added to the Provider Organisation record where the sites of
a Provider Organisation can be defined.

A :ref:`dfn-service_contact_site` field has been added to the Service Contact record
to record at which site the service contact took place.

The new '5: SMS' response can also be used for :ref:`dfn-service_contact_modality`

.. _steps-required-to-upgrade:

Steps required to upgrade to Version 4.1 uploads
------------------------------------------------

1. Upgrade hAPI to export files in the new Version 4.1 format
   which adds a 'sites' column to the Provider Organisation worksheet and a 'service_contact_site'
   column to the Service Contact worksheet.

Changes from Version 2
----------------------

Please refer to `Changes and Upgrading from Version 2 <https://docs.pmhc-mds.com/projects/data-specification/en/v4/changes-from-v2.html>`_.