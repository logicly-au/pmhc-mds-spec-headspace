Definitions
-----------

.. _dfn-episode_key:

Episode Key
^^^^^^^^^^^

This is a number or code assigned to each episode. The Episode Key is unique and stable for each episode at the level of the organisation.

:Field name: episode_key

:Data type: string (2,50)

:Required: yes

----------

.. _dfn-key:

Key
^^^

A metadata key name.

:Field name: key

:Data type: string

:Required: yes

----------

.. _dfn-organisation_path:

Organisation Path
^^^^^^^^^^^^^^^^^

A sequence of colon separated Organisation Keys that fully specifies the Provider Organisation providing a service to the client.

:Field name: organisation_path

:Data type: string

:Required: yes
:Notes:
  A combination of the Primary Health Network's (PHN's) Organisation Key and the
  Provider Organisation's Organisation Key separated by a colon.
  
  Here is an example organisation structure showing the Organisation Path for each organisation:
  
  +------------------+-------------------------------+---------------------------------------------+---------------------+-------------------+
  | Organisation Key | Organisation Name             | Organisation Type                           | Parent Organisation | Organisation Path |
  +==================+===============================+=============================================+=====================+===================+
  | PHN999           | Test PHN                      | Primary Health Network                      | None                | PHN999            |
  +------------------+-------------------------------+---------------------------------------------+---------------------+-------------------+
  | PO101            | Test Provider Organisation    | Private Allied Health Professional Practice | PHN999              | PHN999:PO101      |
  +------------------+-------------------------------+---------------------------------------------+---------------------+-------------------+
  

----------

.. _dfn-practitioner_key:

Practitioner Key
^^^^^^^^^^^^^^^^

A unique identifier for a practitioner within the provider organisation.

:Field name: practitioner_key

:Data type: string (2,50)

:Required: yes

----------

.. _dfn-service_contact_participation_indicator:

Service Contact - Client Participation Indicator
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An indicator of whether the client participated, or intended to participate, in the service contact, as represented by a code.

:Field name: service_contact_participation_indicator

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
:Notes:
  Service contacts are not restricted to in-person communication but can include
  telephone, video link or other forms of direct communication.
  
  1 - Yes
    This code is to be used for service contacts between a mental health service
    provider and the patient/client in whose clinical record the service contact
    would normally warrant a dated entry, where the patient/client is
    participating.
  
  2 - No
    This code is to be used for service contacts between a mental health service
    provider and a third party(ies) where the patient/client, in whose clinical
    record the service contact would normally warrant a dated entry, is not
    participating.
  
  *Note:* Where a client intended to participate in a service contact but failed
  to attend, :ref:`dfn-service_contact_participation_indicator` should be recorded
  as '1: Yes' and :ref:`dfn-service_contact_no_show` should be recorded as '1: Yes'.
  

:METeOR: `494341 <http://meteor.aihw.gov.au/content/index.phtml/itemId/494341>`__

----------

.. _dfn-service_contact_copayment:

Service Contact - Copayment
^^^^^^^^^^^^^^^^^^^^^^^^^^^

The co-payment is the amount paid by the client per session.

:Field name: service_contact_copayment

:Data type: number

:Required: yes

:Domain:
  0 - 999999.99
:Notes:
  Up to 6 digits before the decimal point; up to 2 digits after the decimal
  point.
  
  The co-payment is the amount paid by the client per service contact, not the
  fee paid by the project to the practitioner or the fee paid by the project to the
  practitioner plus the client contribution. In many cases, there will not be a
  co-payment charged and therefore zero should be entered. Where a co-payment
  is charged it should be minimal and based on an individual's capacity to pay.
  

----------

.. _dfn-service_contact_date:

Service Contact - Date
^^^^^^^^^^^^^^^^^^^^^^

The date of each mental health service contact between a health service provider and patient/client.

:Field name: service_contact_date

:Data type: date

:Required: yes
:Notes:
  For Date fields, data must be recorded in compliance with the standard format
  used across the National Health Data Dictionary; specifically, dates must be
  of fixed 8 column width in the format DDMMYYYY, with leading zeros used when
  necessary to pad out a value. For instance, 13th March 2008 would appear as
  13032008.
  
  - The service contact date must not be before 1st January 2014.
  
  - The service contact date must not be in the future.
  

:METeOR: `494356 <http://meteor.aihw.gov.au/content/index.phtml/itemId/494356>`__

----------

.. _dfn-service_contact_duration:

Service Contact - Duration
^^^^^^^^^^^^^^^^^^^^^^^^^^

The time from the start to finish of a service contact.

:Field name: service_contact_duration

:Data type: string

:Required: yes

:Domain:
  :0: No contact took place
  :1: 1-15 mins
  :2: 16-30 mins
  :3: 31-45 mins
  :4: 46-60 mins
  :5: 61-75 mins
  :6: 76-90 mins
  :7: 91-105 mins
  :8: 106-120 mins
  :9: over 120 mins
  :99: Missing
:Notes:
  For group sessions the time for client spent in the session is recorded for
  each client, regardless of the number of clients or third parties participating
  or the number of service providers providing the service. Writing up details of
  service contacts is not to be reported as part of the duration, except if
  during or contiguous with the period of client or third party participation.
  Travel to or from the location at which the service is provided, for example to
  or from outreach facilities or private homes, is not to be reported as part of
  the duration of the service contact.
  
  0 - No contact took place
    Only use this code where the service contact is recorded as a no show.
  

----------

.. _dfn-service_contact_final:

Service Contact - Final
^^^^^^^^^^^^^^^^^^^^^^^

An indication of whether the Service Contact is the final for the current Episode of Care

:Field name: service_contact_final

:Data type: string

:Required: yes

:Domain:
  :1: No further services are planned for the client in the current episode
  :2: Further services are planned for the client in the current episode
  :3: Not known at this stage
:Notes:
  Service providers should report this item on the basis of future planned or
  scheduled contacts with the client. Where this item is recorded as 1 (No
  further services planned), the episode should be recorded as completed by:
  
  - the date of the final Service Contact should be recorded as the Episode End
    Date
  - the Episode Completion Status field should be recorded as ‘Treatment
    concluded.
  
  Note that no further Service Contacts can be recorded against an
  episode once it is marked as completed. Where an episode has been marked as
  completed prematurely, the Episode End Date can be manually corrected to allow
  additional activity to be recorded.
  

----------

.. _dfn-headspace_funding_source:

Service Contact - headspace Funding Source
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The source of funding for a headspace service contact

:Field name: headspace_funding_source

:Data type: string

:Required: yes

:Domain:
  :1: Source 1
  :2: Source 2
  :3: Source 3
  :4: Source 4

----------

.. _dfn-service_contact_interpreter:

Service Contact - Interpreter Used
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether an interpreter service was used during the Service Contact

:Field name: service_contact_interpreter

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :9: Not stated
:Notes:
  Interpreter services includes verbal language, non-verbal language and
  languages other than English.
  
  1 - Yes
    Use this code where interpreter services were used during the Service
    Contact. Use of interpreter services for any form of sign language or other
    forms of non-verbal communication should be coded as Yes.
  
  2 - No
    Use this code where interpreter services were not used during the Service
    Contact.
  
  9 - Not stated
    Indicates that the item was not collected. This item should not appear as an
    option for clinicians, it is for administrative use only.
  

----------

.. _dfn-service_contact_modality:

Service Contact - Modality
^^^^^^^^^^^^^^^^^^^^^^^^^^

How the service contact was delivered, as represented by a code.

:Field name: service_contact_modality

:Data type: string

:Required: yes

:Domain:
  :0: No contact took place
  :1: Face to Face
  :2: Telephone
  :3: Video
  :4: Internet-based
:Notes:
  0 - No contact took place
    Only use this code where the service contact is recorded as a no show.
  
  1 - Face to Face
    - If 'Face to Face' is selected, a value other than 'Not applicable' must
      be selected for Service Contact Venue
    - If 'Face to Face' is selected a valid Australian
      postcode must be entered for Service Contact Postcode. The unknown postcode is not valid.
  
  4 - Internet-based
      Includes email communication, that would normally warrant a dated entry in 
      the clinical record of the client, involving a third party, such as a carer
      or family member, and/or other professional or mental health worker, or
      other service provider.
  
  Note: If Service Contact Modality is not 'Face to Face' the postcode must be entered as unknown 9999.
  

----------

.. _dfn-service_contact_no_show:

Service Contact - No Show
^^^^^^^^^^^^^^^^^^^^^^^^^

Where an appointment was made for an intended participant(s), but the intended participant(s) failed to attend the appointment, as represented by a code.

:Field name: service_contact_no_show

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
:Notes:
  1 - Yes
    The intended participant(s) failed to attend the appointment.
  2 - No
    The intended participant(s) attended the appointment.
  

----------

.. _dfn-service_contact_participants:

Service Contact - Participants
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An indication of who participated in the Service Contact.

:Field name: service_contact_participants

:Data type: string

:Required: yes

:Domain:
  :1: Individual client
  :2: Client group
  :3: Family / Client Support Network
  :4: Other health professional or service provider
  :5: Other
  :9: Not stated
:Notes:
  1 - Individual
    Code applies for Service Contacts delivered individually to a single client
    without third party participants. Please refer to the Note below.
  
  2 - Client group
    Code applies for Service Contacts delivered on a group basis to two or more
    clients.
  
  3 - Family / Client Support Network
    Code applies to Service Contacts delivered to the family/social support
    persons of the client, with or without the participation of the client.
  
  4 - Other health professional or service provider
    Code applies for Service Contacts that involve another health professional or
    service provider (in addition to the Practitioner), with or without the
    participation of the client.
  
  5 - Other
    Code applies to Service Contacts delivered to other third parties
    (e.g., teachers, employer), with or without the participation of the client.
  
  *Note:* This item interacts with :ref:`dfn-service_contact_participation_indicator`.
  Where :ref:`dfn-service_contact_participants` has a value of
  '1: Individual', :ref:`dfn-service_contact_participation_indicator` must
  have a value of '1: Yes'. :ref:`dfn-service_contact_no_show` is used to record if the
  patient failed to attend the appointment.
  

----------

.. _dfn-service_contact_postcode:

Service Contact - Postcode
^^^^^^^^^^^^^^^^^^^^^^^^^^

The Australian postcode where the service contact took place.

:Field name: service_contact_postcode

:Data type: string

:Required: yes
:Notes:
  A valid Australian postcode or 9999 if the postcode is unknown. The full list
  of Australian Postcodes can be found at `Australia Post
  <http://www.auspost.com.au/>`_.
  
  - If Service Contact Modality is not 'Face to Face' enter 9999
  - If Service Contact Modality is 'Face to Face' a valid Australian postcode must be
    entered
  
  - As of 1 November 2016, PMHC MDS currently validates that postcodes are in the
    range 0200-0299 or 0800-9999.
  

:METeOR: `429894 <http://meteor.aihw.gov.au/content/index.phtml/itemId/429894>`__

----------

.. _dfn-service_contact_tags:

Service Contact - Tags
^^^^^^^^^^^^^^^^^^^^^^

List of tags for the service contact.

:Field name: service_contact_tags

:Data type: string

:Required: no
:Notes:
  A comma separated list of tags.
  
  Organisations can use this field to tag records in order to partition them as
  per local requirements.
  
  Tags can contain lower case letters (or will get lowercased), numbers, dashes,
  spaces, and ``!``. Leading and trailing spaces will be stripped. e.g. ``priority!,
  nurse required, pending-outcome-1`` would all be legitimate.
  
  Tags beginning with an exclamation mark (!) are reserved for future use by the
  Department. e.g. ``!reserved, ! reserved, !department-use-only``.
  

----------

.. _dfn-service_contact_type:

Service Contact - Type
^^^^^^^^^^^^^^^^^^^^^^

The main type of service provided in the service contact, as represented by the service type that accounted for most provider time.

:Field name: service_contact_type

:Data type: string

:Required: yes

:Domain:
  :0: No contact took place
  :1: Assessment
  :2: Structured psychological intervention
  :3: Other psychological intervention
  :4: Clinical care coordination/liaison
  :5: Clinical nursing services
  :6: Child or youth specific assistance NEC
  :7: Suicide prevention specific assistance NEC
  :8: Cultural specific assistance NEC
  :98: ATAPS
  :99: Missing
:Notes:
  
  
  Describes the main type of service delivered in the contact, selected from a
  defined list of categories.  Where more than service type was provided select
  that which accounted for most provider time. Service providers are required
  to report on Service Type for all Service Contacts.
  
  *Note: NEC is used for 'Not Elsewhere Classified'. For these records, only use these service types if they cannot be classified by any of the other service options.*
  
  0 - No contact took place
    Only use this code where the service contact is recorded as a no show.
  
  1 - Assessment
    Determination of a person's mental health status and need for mental
    health services, made by a suitably trained mental health professional,
    based on the collection and evaluation of data obtained through interview
    and observation, of a person's history and presenting problem(s).
    Assessment may include consultation with the person's family and concludes
    with formation of problems/issues, documentation of a preliminary
    diagnosis, and a treatment plan.
  
  2 - Structured psychological intervention
    Those interventions which include a structured interaction between a
    client and a service provider using a recognised, psychological method,
    for example, cognitive behavioural techniques, family therapy or psycho
    education counselling. These are recognised, structured or published
    techniques for the treatment of mental ill-health. Structured psychological
    interventions are designed to alleviate psychological distress or
    emotional disturbance, change maladaptive behaviour and foster mental
    health. Structured psychological therapies can be delivered on either an
    individual or group basis, typically in an office or community setting.
    They may be delivered by trained mental health professionals or other
    individuals with appropriate competencies but who do not meet the
    requirements for registration, credentialing or recognition as a mental
    health professional. Structured Psychological Therapies include but are
    not limited to:
  
    - Psycho-education (including motivational interviewing)
    - Cognitive-behavioural therapies
    - Relaxation strategies
    - Skills training
    - Interpersonal therapy
  
  3 - Other psychological intervention
     Psychological interventions that do meet criteria for structured
     psychological intervention.
  
  4 - Clinical care coordination/liaison
     Activities focused on working in partnership and liaison with other
     health care and service providers and other individuals to coordinate
     and integrate service delivery to the client with the aim of improving
     their clinical outcomes. Consultation and liaison may occur with primary
     health care providers, acute health, emergency services, rehabilitation
     and support services, family, friends, other support people and carers
     and other agencies that have some level of responsibility for the
     client's treatment and/or well being.
  
  5 - Clinical nursing services
    Services delivered by mental health nurses that cannot be described
    elsewhere.  Typically, these aim to provide clinical support to clients
    to effectively manage their symptoms and avoid unnecessary hospitalisation.
    Clinical nursing services include:
  
    - monitoring a client's mental state;
    - liaising closely with family and carers as appropriate;
    - administering and monitoring compliance with medication;
    - providing information on physical health care, as required and,
      where appropriate, assist in addressing the physical health inequities
      of people with mental illness; and
    - improving links to other health professionals/clinical service providers.
  
  6 - Child or youth-specific assistance NEC
    Services delivered to, or on behalf, of a child or young person that cannot
    be described elsewhere. These can include, for example, working with a
    child’s teacher to provide advice on assisting the child in their educational
    environment; working with a young person's employer to assist the young
    person to their work environment.
  
    *Note: This code should only be used for
    Service Contacts that cannot be described by any other Service Type. It is
    expected that the majority of Service Contacts delivered to children and
    young people can be assigned to other categories.*
  
  7 - Suicide prevention specific assistance NEC
    Services delivered to, or on behalf, of a client who presents with risk of
    suicide that cannot be described elsewhere. These can include, for example,
    working with the person's employers to advise on changes in the workplace;
    working with a young person's teacher to assist the child in their school
    environment; or working with relevant community-based groups to assist the
    client to participate in their activities.
  
    *Note: This code should only be used for Service Contacts that cannot be
    described by any other Service Type. It is expected that the majority of
    Service Contacts delivered to client’s who have a risk of suicide can be
    assigned to other categories.*
  
  8 - Cultural specific assistance NEC
    Culturally appropriate services delivered to, or on behalf, of an Aboriginal
    or Torres Strait Islander client that cannot be described elsewhere.  These
    can include, for example, working with the client’s community support network
    including family and carers, men’s and women’s groups, traditional healers,
    interpreters and social and emotional wellbeing counsellors.
  
    *Note: This code should only be used for Service Contacts that cannot be
    described by any other Service Type. It is expected that the majority of
    Service Contacts (see domains below) delivered to Aboriginal or Torres Strait
    Islander clients can be assigned to other categories.*
  
  98 - ATAPS
    Services delivered as part of ATAPS funded referrals that are recorded and/or
    migrated into the PMHC MDS.
  
    *Note: This code should only be used for Service Contacts that are migrated
    from ATAPS MDS sources that cannot be described by any other Service Type.
    It is expected that the majority of Service Contacts delivered to clients
    from 1st July, 2017 can be assigned to other categories.*
  
    This response will not be allowed on service contacts delivered after
    30 June 2018. (All ATAPS referrals should have concluded by that date).
  
    This response will only be allowed on service contacts with the !ATAPS flag.
  

----------

.. _dfn-service_contact_venue:

Service Contact - Venue
^^^^^^^^^^^^^^^^^^^^^^^

Where the service contact was delivered, as represented by a code.

:Field name: service_contact_venue

:Data type: string

:Required: yes

:Domain:
  :1: Client's Home
  :2: Service provider's office
  :3: GP Practice
  :4: Other medical practice
  :5: Headspace Centre
  :6: Other primary care setting
  :7: Public or private hospital
  :8: Aged care centre
  :9: School or other educational centre
  :10: Client's Workplace
  :11: Other
  :98: Not applicable (Service Contact Modality is not face to face)
  :99: Not stated
:Notes:
  Values other than ‘Not applicable’ only to be specified when Service Contact
  Modality is ‘Face to Face’.
  
  Note that 'Other primary care setting' is suitable for primary care settings
  such as community health centres.
  

----------

.. _dfn-service_contact_key:

Service Contact Key
^^^^^^^^^^^^^^^^^^^

This is a number or code assigned to each service contact. The Service Contact Key is unique and stable for each service contact at the level of the organisation.

:Field name: service_contact_key

:Data type: string (2,50)

:Required: yes

----------

.. _dfn-value:

Value
^^^^^

The metadata value.

:Field name: value

:Data type: string

:Required: yes

----------

