.. _validation-rules:

Validation Rules
================

This document defines validation rules between items and record types.
The domain of individual items is defined in :ref:`record-formats`.

headspace specifications are an extension of the Primary Mental Health Care Minimum Data Set (PMHC MDS);
the Version 4 PMHC MDS Data model and specification validation rules still apply. These are available to be viewed at
https://docs.pmhc-mds.com/projects/data-specification/en/v4/validation-rules.html.

In addition, the following rules apply for the headspace specification:

.. _current-validations:

Current Validations
-------------------

.. _service-contact-practitioner-current-validations:

Service Contact Practitioner
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

In addition to the `standard Service Contact Practitioner rules <https://docs.pmhc-mds.com/projects/data-specification/en/v4/validation-rules.html#service-contact-practitioner>`_:
  1. :ref:`dfn-delivery_organisation_path` and :ref:`dfn-practitioner_key` must match to the 
     :ref:`dfn-organisation_path` and :ref:`dfn-practitioner_key` of an existing PMHC practitioner
     within the PMHC MDS

.. _collection-occasion-current-validations:

Collection Occasion
~~~~~~~~~~~~~~~~~~~

  1. :ref:`dfn-delivery_organisation_path` must be an existing PMHC Organisation
     within the PMHC MDS

 .. _future-validations:

 .. Future Validations
 .. ------------------