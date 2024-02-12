Definitions
-----------

.. _dfn-additional_diagnosis:

Additional Diagnosis
^^^^^^^^^^^^^^^^^^^^

The main additional condition or complaint co-existing with the Principal Diagnosis or arising during the episode of care.

:Field name: additional_diagnosis

:Data type: string

:Required: yes

:Domain:
  :000: No additional diagnosis
  :100: Anxiety disorders (ATAPS)
  :101: Panic disorder
  :102: Agoraphobia
  :103: Social phobia
  :104: Generalised anxiety disorder
  :105: Obsessive-compulsive disorder
  :106: Post-traumatic stress disorder
  :107: Acute stress disorder
  :108: Other anxiety disorder
  :200: Affective (Mood) disorders (ATAPS)
  :201: Major depressive disorder
  :202: Dysthymia
  :203: Depressive disorder NOS
  :204: Bipolar disorder
  :205: Cyclothymic disorder
  :206: Other affective disorder
  :300: Substance use disorders (ATAPS)
  :301: Alcohol harmful use
  :302: Alcohol dependence
  :303: Other drug harmful use
  :304: Other drug dependence
  :305: Other substance use disorder
  :400: Psychotic disorders (ATAPS)
  :401: Schizophrenia
  :402: Schizoaffective disorder
  :403: Brief psychotic disorder
  :404: Other psychotic disorder
  :501: Separation anxiety disorder
  :502: Attention deficit hyperactivity disorder (ADHD)
  :503: Conduct disorder
  :504: Oppositional defiant disorder
  :505: Pervasive developmental disorder
  :506: Other disorder of childhood and adolescence
  :601: Adjustment disorder
  :602: Eating disorder
  :603: Somatoform disorder
  :604: Personality disorder
  :605: Other mental disorder
  :901: Anxiety symptoms
  :902: Depressive symptoms
  :903: Mixed anxiety and depressive symptoms
  :904: Stress related
  :905: Other
  :999: Missing

:Notes:
  Additional Diagnosis gives information on conditions that are significant in
  terms of treatment required and resources used during the episode of care.
  Additional diagnoses should be interpreted as conditions that affect client
  management in terms of requiring any of the following:
  
  -	Commencement, alteration or adjustment of therapeutic treatment
  -	Diagnostic procedures
  -	Increased clinical care and/or monitoring
  
  Where the client one or more comorbid mental health conditions in addition to
  the condition coded as the Principal Diagnosis, record the main condition as
  the Additional Diagnosis. 
  
  The following responses have been added to allow mapping of ATAPS data to PMHC
  format.
  
  - 100: Anxiety disorders (ATAPS)
  - 200: Affective (Mood) disorders (ATAPS)
  - 300: Substance use disorders (ATAPS)
  - 400: Psychotic disorders (ATAPS)
  
  *Note: These four codes should only be used for Episodes that are migrated
  from ATAPS MDS sources that cannot be described by any other Diagnosis.
  It is expected that the majority of Episodes delivered to clients
  from 1st July, 2017 can be assigned to other diagnoses.*
  
  These responses will only be allowed on episodes where the original
  ATAPS referral date was before 1 July 2017
  
  These responses will only be allowed on episodes with the !ATAPS flag.
  
  For further notes on the recording of diagnosis codes see Principal Diagnosis.
  

----------

.. _dfn-client_postcode:

Area of usual residence, postcode
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The Australian postcode of the client.

:Field name: client_postcode

:Data type: string

:Required: yes

:Notes:
  A valid Australian postcode or 9999 if the postcode is unknown or the client
  has not provided sufficient information to confirm their current residential
  address.
  
  The full list of Australian Postcodes can be found at `Australia Post
  <http://www.auspost.com.au/>`_.
  
  When collecting the postcode of a person's usual place of residence, the ABS
  recommends that 'usual' be defined as: 'the place where the person has or
  intends to live for 6 months or more, or the place that the person regards as
  their main residence, or where the person has no other residence, the place
  they currently reside.'
  
  Postcodes are deemed valid if they are in the range 0200-0299, 0800-9999.
  

:METeOR: `429894 <http://meteor.aihw.gov.au/content/index.phtml/itemId/429894>`__

----------

.. _dfn-client_consent:

Client Consent to Anonymised Data
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An indication that the client has consented to their anonymised data being provided to the Department of Health for statistical purposes in planning and improving mental health services.

:Field name: client_consent

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No

:Notes:
  1 - Yes
      The client has consented to their anonymised data being provided to the
      Department of Health for statistical purposes in planning and improving
      mental health services. The client's data will be included in reports and
      extracts accessible by the Department of Health.
  
  2 - No
      The client has not consented to their anonymised data being provided to the
      Department of Health for statistical purposes in planning and improving
      mental health services. The client's data will be excluded from reports and
      extracts accessible by the Department of Health.
  
  All data can be uploaded, regardless of consent flag.
  
  All data will be available to PHNs to extract for their own internal data evaluation purposes.
  

----------

.. _dfn-client_key:

Client Key
^^^^^^^^^^

This is a number or code assigned to each individual client referred to the commissioned organisation. The client identifier is unique and stable for each individual within the Provider Organisation.

:Field name: client_key

:Data type: string (2,50)

:Required: yes

----------

.. _dfn-service_contact_participation_indicator:

Client Participation Indicator
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

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

.. _dfn-collection_occasion_date:

Collection Occasion Date
^^^^^^^^^^^^^^^^^^^^^^^^

The date of the collection occasion.

:Field name: collection_occasion_date

:Data type: date

:Required: yes

:Notes:
  For Date fields, data must be recorded in compliance with the standard format
  used across the National Health Data Dictionary; specifically, dates must be
  of fixed 8 column width in the format DDMMYYYY, with leading zeros used when
  necessary to pad out a value. For instance, 13th March 2008 would appear as
  13032008.
  
  If the date the activity was performed is unknown, 09099999 should be used.
  
  - For an intake collection occasion, the collection date must not be
    before 1st January 2020, otherwise, the collection date must not be before
    1st January 2016.
  
  - The collection date must not be in the future.
  

----------

.. _dfn-collection_occasion_key:

Collection Occasion Key
^^^^^^^^^^^^^^^^^^^^^^^

This is a number or code assigned to each collection occasion of service activities. The Collection Occasion Key is unique and stable for each collection occasion at the level of the organisation.

:Field name: collection_occasion_key

:Data type: string (2,50)

:Required: yes

:Notes:
  Collection Occasion Keys must be generated by the organisation to be unique at the Provider
  Organisation level and must persist across time.  See
  
  See `Identifier Management <https://docs.pmhc-mds.com/projects/data-specification/en/v4/identifier-management.html>`_
  

----------

.. _dfn-reason_for_collection:

Collection Occasion Reason
^^^^^^^^^^^^^^^^^^^^^^^^^^

The reason for the collection of the service activities on the identified Collection Occasion.

:Field name: reason_for_collection

:Data type: string

:Required: yes

:Domain:
  :1: Episode start
  :2: Review
  :3: Episode end

:Notes:
  1 - Episode start
    Refers to an outcome measure undertaken at the beginning of an Episode of Care. For the purposes of the PMHC MDS protocol, episodes may start at the point of first Service Contact with a new client who has not been seen previously by the organisation, or a first contact for a new Episode of Care for a client who has received services from the organisation in a previous Episode of Care that has been completed.
  
  2 - Review
    Refers to an outcome measure undertaken during the course of an Episode of
    Care that post-dates Episode Start and pre-dates Episode End. An outcome
    measure may be undertaken at Review for a number of reasons including:
  
    - in response to critical clinical events or changes in the client’s mental
      health status;
    - following a client-requested review; or
    - other situations where a review may be indicated.
  
  3 - Episode end
    Refers to the outcome measures collected at the end of an Episode of Care.
  

----------

.. _dfn-collection_occasion_tags:

Collection Occasion Tags
^^^^^^^^^^^^^^^^^^^^^^^^

List of tags for the collection occasion.

:Field name: collection_occasion_tags

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

.. _dfn-service_contact_copayment:

Copayment
^^^^^^^^^

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

.. _dfn-delivery_organisation_path:

Delivery Organisation Path
^^^^^^^^^^^^^^^^^^^^^^^^^^

A sequence of colon separated Organisation Keys that fully specifies the Provider Organisation providing a service to the client.

:Field name: delivery_organisation_path

:Data type: string

:Required: yes

:Notes:
  A combination of the Primary Health Network's (PHN's) Organisation Key and the
  Provider Organisation's Organisation Key separated by a colon.
  
  .. include:: shared/example-organisation-path.rst
  

----------

.. _dfn-service_contact_duration:

Duration
^^^^^^^^

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

.. _dfn-employment_participation:

Employment Participation
^^^^^^^^^^^^^^^^^^^^^^^^

Whether a person in paid employment is employed full-time or part-time, as represented by a code.

:Field name: employment_participation

:Data type: string

:Required: yes

:Domain:
  :1: Full-time
  :2: Part-time
  :3: Not applicable - not in the labour force
  :9: Not stated/inadequately described

:Notes:
  Applies only to people whose labour force status is employed. (See metadata
  item Labour Force Status, for a definition of 'employed'). Paid employment
  includes persons who performed some work for wages or salary, in cash or in
  kind, and persons temporarily absent from a paid employment job but who
  retained a formal attachment to that job.
  
  1 - Full-time
    Employed persons are working full-time if they:
    (a) usually work 35 hours or more in a week (in all paid jobs) or
    (b) although usually working less than 35 hours a week, actually worked 35
    hours or more during the reference period.
  
  2 - Part-time
    Employed persons are working part-time if they usually work less than 35
    hours a week (in all paid jobs) and either did so during the reference
    period, or were not at work in the reference period.
  
  9 - Not stated / inadequately described
    Is not to be used on primary collection forms. It is primarily for use in
    administrative collections when transferring data from data sets where the
    item has not been collected.
  

:METeOR: `269950 <http://meteor.aihw.gov.au/content/index.phtml/itemId/269950>`__

----------

.. _dfn-episode_completion_status:

Episode Completion Status
^^^^^^^^^^^^^^^^^^^^^^^^^

An indication of the completion status of an *Episode of Care*.

:Field name: episode_completion_status

:Data type: string

:Required: no

:Domain:
  :0: Episode open
  :1: Episode closed - treatment concluded
  :2: Episode closed administratively - client could not be contacted
  :3: Episode closed administratively - client declined further contact
  :4: Episode closed administratively - client moved out of area
  :5: Episode closed administratively - client referred elsewhere
  :6: Episode closed administratively - other reason

:Notes:
  In order to use code 1 (Episode closed - treatment concluded) the client must have at least one service contact. All other codes may be applicable even when the client has no service contacts.
  
  0 or Blank - Episode open
    The client still requires treatment and further service contacts are
    required.
  
  1 - Episode closed - treatment concluded
    No further service contacts are planned as the client no longer requires
    treatment.
  
  2 - Episode closed administratively - client could not be contacted
    Further service contacts were planned but the client could no longer be
    contacted.
  
  3 - Episode closed administratively - client declined further contact
    Further service contacts were planned but the client declined further treatment.
  
  4 - Episode closed administratively - client moved out of area
    Further service contacts were planned but the client moved out of the area
    without a referral elsewhere. Where a client was referred somewhere else
    *Episode Completion Status* should be recorded as code 5 (Episode closed
    administratively - client referred elsewhere).
  
  5 - Episode closed administratively - client referred elsewhere
    Where a client still requires treatment, but a different service has been
    deemed appropriate or a client has moved out of the area so has moved to a
    different provider.
  
  6 - Episode closed administratively - other reason
    Where a client is no longer being given treatment but the reason for
    conclusion is not covered above.
  
  *Episode Completion Status* interacts with two other data items in the PMHC MDS
  - *Service Contact - Final*, and *Episode End Date*.
  
  *Service Contact - Final*
    Collection of data for *Service Contacts* includes a *Service Contact -
    Final* item that requires the service provider to indicate whether further
    Service Contacts are planned. Where this item is recorded as 'no further
    services planned', the *Episode Completion Status* should be recorded as code
    1 (Episode closed - treatment concluded) code 3 (Episode closed
    administratively - client declined further contact), code 4 (Episode closed
    administratively - client moved out of area), or code 5 (Episode closed
    administratively - client referred elsewhere). Selection of coding option
    should be that which best describes the circumstances of the episode ending.
  
  *Episode End Date*
    Where a Final Service Contact is recorded *Episode End Date* should be
    recorded as the date of the final Service Contact.
  

----------

.. _dfn-episode_end_date:

Episode End Date
^^^^^^^^^^^^^^^^

The date on which an *Episode of Care* is formally or administratively ended

:Field name: episode_end_date

:Data type: date

:Required: no

:Notes:
  - The episode end date must not be before 1st January 2016.
  
  - The episode end date must not be in the future.
  
  An *Episode of Care* may be ended in one of two ways:
  
  - clinically, consequent upon conclusion of treatment for the client and
    discharge from care; or
  
  - administratively (statistically), where contact with the client has been lost
    by the organisation prior to completion of treatment or other factors
    prevented treatment being completed.
  
  *Episode End Date* interacts with two other data items in the PMHC MDS - *Service
  Contact - Final*, and *Episode Completion Status*.
  
  *Service Contact - Final*
    Collection of data for *Service Contacts* includes a *Service Contact - Final*
    item that requires the service provider to indicate whether further *Service
    Contacts* are planned. Where this item is recorded as ‘no further services
    planned’, the date of the final *Service Contact* should be recorded as the
    *Episode End Date*.
  
  *Episode Completion Status*
    This field should be recorded as 'Episode closed treatment concluded' when a
    *Service Contact - Final* is recorded. The *Episode Completion Status* field
    can also be manually recorded to allow for administrative closure of episodes
    (e.g., contact has been lost with a client over a prolonged period - see
    *Episode Completion Status* for additional guidance). Where an episode is
    closed administratively, the *Episode End Date* should be recorded as the
    date on which the organisation made the decision to close episode.
  

:METeOR: `730859 <http://meteor.aihw.gov.au/content/index.phtml/itemId/730859>`__

----------

.. _dfn-episode_key:

Episode Key
^^^^^^^^^^^

This is a number or code assigned to each episode. The Episode Key is unique and stable for each episode at the level of the Provider Organisation.

:Field name: episode_key

:Data type: string (2,50)

:Required: yes

:Notes:
  Episode Keys must be generated by the organisation to be unique at the Provider
  Organisation level and must persist across time. Creation of episode keys in
  this way allows clients to be merged (where duplicate Client Keys have been
  identified) without having to re-allocate episode identifiers since they can
  never clash. See See `Managing all other entity keys <https://docs.pmhc-mds.com/projects/data-specification/en/v4/identifier-management.html#unique-keys>`_
  
  Episode Keys are case sensitive and must be valid unicode characters.
  
  A recommended approach for the creation of Episode Keys is to compute `random
  UUIDs <https://en.wikipedia.org/wiki/Universally_unique_identifier>`_.
  

----------

.. _dfn-episode_tags:

Episode Tags
^^^^^^^^^^^^

List of tags for the episode.

:Field name: episode_tags

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

.. _dfn-service_contact_final:

Final Service Contact
^^^^^^^^^^^^^^^^^^^^^

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

.. _dfn-funding_source:

Funding Source
^^^^^^^^^^^^^^

The source of PHN Mental Health funds that are wholly or primarily funding the Service Contact.

:Field name: funding_source

:Data type: string

:Required: yes

:Domain:
  :0: Flexible funding pool - Not Otherwise Stated
  :11: Flexible funding pool - Low intensity
  :12: Flexible funding pool - Youth Severe
  :13: Flexible funding pool - Child and Youth
  :14: Flexible funding pool - Psychological therapies for hard to reach
  :15: Flexible funding pool - Services for People with Severe Mental Illness
  :16: Flexible funding pool - Suicide Prevention - Indigenous
  :17: Flexible funding pool - Suicide Prevention - General
  :18: Indigenous Mental Health
  :19: Commonwealth Psychosocial Support
  :20: Psychological Treatment in Residential Aged Care Facilities
  :21: Emergency Response - Bushfire Recovery 2020
  :22: Emergency Response - Flood 2022
  :23: Head to Health program
  :24: Head to Health Kids Hubs
  :25: Norfolk Island
  :26: National Suicide Prevention Trial
  :27: Way Back Support Service
  :60: headspace Grant
  :61: MBS
  :62: In Kind
  :63: Other Government Funding - State: EMHSS
  :64: Other Government Funding - State: onespace
  :65: Other Government Funding - State: Victorian Pathways Integration - headspace/ CYMHS
  :66: Other Government Funding - State: NSW COVID Support
  :67: Other Government Funding - State: NSW COVID Recovery
  :68: Other Government Funding - State: Bilaterals - Service Integration
  :69: Other Government Funding - State: Other State
  :70: Other Government Funding - Federal: VIC COVID-19
  :71: Other Government Funding - Federal: NSW COVID Support
  :72: Other Government Funding - Federal: Early Career Program
  :73: Other Government Funding - Federal: Other Federal
  :97: Other funding source – no Commonwealth Funding
  :98: Unknown/Not stated
  :99: Missing

:Notes:
  Organisations must record this information for all new Service Contacts
  under the Version 4 specification.
  
  0 - Flexible funding pool - Not Otherwise Stated
    This response is only to be used for existing data entered under a Version 2
    or HeadtoHelp Version 3 specification.
  
  23 - Head to Health program
    This includes Head to Health Adult Centres and Satellites, and pop-up clinics.
  
  25 - Norfolk Island
    This category only applies to services commissioned through the
    Central and Eastern Sydney PHN.
  
  27 - Way Back Support Service
    This category must only to be used in conjunction with the Wayback Extension.
  
  97 - Other funding source - no Commonwealth Funding
    This category can only to be used where a service is wholly funded by a
    non-PHN funding source such as State/Territory jurisdictional funds.
  
    Where a service is co-funded by both PHN funds and State/Territory
    jurisdictional funds, the appropriate Funding Source category for PHN
    funding used to pay for the service should be selected unless otherwise
    advised by relevant guidance from the Department. Tags and/or other
    reporting measures can be used to differentiate co-funded arrangements.

----------

.. _dfn-mental_health_treatment_plan:

GP Mental Health Treatment Plan Flag
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An indication of whether a client has a GP mental health treatment plan. A GP should be involved in a referral where appropriate however a mental health treatment plan is not mandatory.

:Field name: mental_health_treatment_plan

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :3: Unknown
  :9: Not stated/inadequately described

----------

.. _dfn-health_care_card:

Health Care Card
^^^^^^^^^^^^^^^^

An indication of whether the person is a current holder of a Health Care Card that entitles them to arrange of concessions for Government funded health services.

:Field name: health_care_card

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :3: Not Known
  :9: Not stated

:Notes:
  Details on the Australian Government Health Care Card are available at:
  https://www.humanservices.gov.au/customer/services/centrelink/health-care-card
  

:METeOR: `605149 <http://meteor.aihw.gov.au/content/index.phtml/itemId/605149>`__

----------

.. _dfn-homelessness:

Homelessness Flag
^^^^^^^^^^^^^^^^^

An indication of whether the client has been homeless in the 4 weeks prior to the current service episode.

:Field name: homelessness

:Data type: string

:Required: yes

:Domain:
  :1: Sleeping rough or in non-conventional accommodation
  :2: Short-term or emergency accommodation
  :3: Not homeless
  :9: Not stated / Missing

:Notes:
  1	- Sleeping rough or in non-conventional accommodation
    Includes sleeping on the streets, in a park, in cars or railway carriages,
    under bridges or other similar ‘rough’ accommodation
  
  2	- Short-term or emergency accommodation
    Includes sleeping in short-term accommodation, emergency accommodation, due
    to a lack of other options. This may include refuges; crisis shelters; couch
    surfing; living temporarily with friends and relatives; insecure
    accommodation on a short term basis; emergency accommodation arranged in
    hotels, motels etc by a specialist homelessness agency.
  
  3	- Not homeless
    Includes sleeping in own accommodation/rental accommodation or living with
    friends or relatives on a stable, long term basis
  
  9	- Not stated / Missing
    Not stated / Missing
  
  Select the code that best fits the client’s sleeping arrangements over the
  preceding 4 weeks. Where multiple options apply (e.g., client has experienced
  more than one of the sleeping arrangements over the previous 4 weeks) the
  following coding hierarchy should be followed:
  
  - If code 1 applied at any time over the 4 week period, code 1
  - If code 2 but not code 1 applied at any time over the 4 week period, code 2
  - Otherwise Code 3 applies
  

----------

.. _dfn-service_contact_interpreter:

Interpreter Used
^^^^^^^^^^^^^^^^

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

.. _dfn-key:

Key
^^^

A metadata key name.

:Field name: key

:Data type: string

:Required: yes

:Notes:
  Current allowed metadata keys are `type` and `version`.
  
  Please refer to :ref:`metadata-format` for an example of the metadata file/worksheet that
  must be used with this specification.
  

----------

.. _dfn-labour_force_status:

Labour Force Status
^^^^^^^^^^^^^^^^^^^

The self-reported status the person currently has in being either in the labour force (employed/unemployed) or not in the labour force, as represented by a code.

:Field name: labour_force_status

:Data type: string

:Required: yes

:Domain:
  :1: Employed
  :2: Unemployed
  :3: Not in the Labour Force
  :9: Not stated/inadequately described

:Notes:
  1 - Employed
    Employed persons are those aged 15 years and over who met one of the following
    criteria during the reference week:
  
    - Worked for one hour or more for pay, profit, commission or payment in kind,
      in a job or business or son a farm (employees and owner managers of
      incorporated or unincorporated enterprises).
    - Worked for one hour or more without pay in a family business or on a farm
      (contributing family workers).
    - Were employees who had a job but were not at work and were:
  
      - away from work for less than four weeks up to the end of the reference
        week; or
      - away from work for more than four weeks up to the end of the reference
        week and
      - received pay for some or all of the four week period to the end of the
        reference week; or
      - away from work as a standard work or shift arrangement; or
      - on strike or locked out; or
      - on workers’ compensation and expected to return to their job.
    - Were owner managers who had a job, business or farm, but were not at work.
  
  2 - Unemployed
    Unemployed persons are those aged 15 years and over who were not employed
    during the reference week, and:
  
    - had actively looked for full time or part time work at any time in the
      four weeks up to the end of the reference week and were available for
      work in the reference week; or
    - were waiting to start a new job within four weeks from the end of the
      reference week and could have started in the reference week if the job
      had been available then.
  
  Actively looked for work includes:
  
    - written, telephoned or applied to an employer for work;
    - had an interview with an employer for work;
    - answered an advertisement for a job;
    - checked or registered with a Job Services Australia provider or any other
      employment agency;
    - taken steps to purchase or start your own business;
    - advertised or tendered for work; and
    - contacted friends or relatives in order to obtain work.
  
  3 - Not in the labour force
    Persons not in the labour force are those aged 15 years and over who were
    not in the categories employed or unemployed, as defined, during the
    reference week. They include people who undertook unpaid household duties
    or other voluntary work only, were retired, voluntarily inactive and those
    permanently unable to work.
  
  9 - Not stated/inadequately described
    Includes children under 15 (0-14 years)
    

:METeOR: `621450 <http://meteor.aihw.gov.au/content/index.phtml/itemId/621450>`__

----------

.. _dfn-marital_status:

Marital Status
^^^^^^^^^^^^^^

A person's current relationship status in terms of a couple relationship or, for those not in a couple relationship, the existence of a current or previous registered marriage, as represented by a code.

:Field name: marital_status

:Data type: string

:Required: yes

:Domain:
  :1: Never married
  :2: Widowed
  :3: Divorced
  :4: Separated
  :5: Married (registered and de facto)
  :6: Not stated/inadequately described

:Notes:
  Refers to the current marital status of a person.
  
  2 - Widowed
    This code usually refers to registered marriages but when self-reported may
    also refer to de facto marriages.
  
  4 - Separated
    This code refers to registered marriages but when self-reported may also
    refer to de facto marriages.
  
  5 - Married (registered and de facto)
    Includes people who have been divorced or widowed but have since
    re-married, and should be generally accepted as applicable to all de facto
    couples, including of the same sex.
  
  6 - Not stated/inadequately described
    This code is not for use on primary collection forms. It is primarily for
    use in administrative collections when transferring data from data sets
    where the item has not been collected.
  

:METeOR: `291045 <http://meteor.aihw.gov.au/content/index.phtml/itemId/291045>`__

----------

.. _dfn-medication_antidepressants:

Medication - Antidepressants (N06A)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether the client is taking prescribed antidepressants for a mental health condition as assessed at intake assessment, as represented by a code.

:Field name: medication_antidepressants

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :9: Unknown

:Notes:
  The N06A class of drugs a therapeutic subgroup of the Anatomical Therapeutic
  Chemical Classification System, a system of alphanumeric codes developed by the
  World Health Organisation (WHO) for the classification of drugs and other
  medical products. It covers drugs designed for the depressive disorders.
  
  Details of drugs included in the category can be found here:
  http://www.whocc.no/atc_ddd_index/?code=N06A
  

----------

.. _dfn-medication_antipsychotics:

Medication - Antipsychotics (N05A)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether the client is taking prescribed antipsychotics for a mental health condition as assessed at intake assessment, as represented by a code.

:Field name: medication_antipsychotics

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :9: Unknown

:Notes:
  The N05A class of drugs a therapeutic subgroup of the Anatomical Therapeutic
  Chemical Classification System, a system of alphanumeric codes developed by the
  World Health Organisation (WHO) for the classification of drugs and other
  medical products. It covers drugs designed for the treatment of psychotic
  disorders.
  
  Details of drugs included in the category can be found here:
  http://www.whocc.no/atc_ddd_index/?code=N05A
  

----------

.. _dfn-medication_anxiolytics:

Medication - Anxiolytics (N05B)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether the client is taking prescribed anxiolytics for a mental health condition as assessed at intake assessment, as represented by a code.

:Field name: medication_anxiolytics

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :9: Unknown

:Notes:
  The N05B class of drugs a therapeutic subgroup of the Anatomical Therapeutic
  Chemical Classification System, a system of alphanumeric codes developed by the
  World Health Organisation (WHO) for the classification of drugs and other
  medical products. It covers drugs designed for the treatment of disorders
  associated with anxiety and tension.
  
  Details of drugs included in the category can be found here:
  http://www.whocc.no/atc_ddd_index/?code=N05B
  

----------

.. _dfn-medication_hypnotics:

Medication - Hypnotics and sedatives (N05C)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether the client is taking prescribed hypnotics and sedatives for a mental health condition as assessed at intake assessment, as represented by a code.

:Field name: medication_hypnotics

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :9: Unknown

:Notes:
  The N05C class of drugs a therapeutic subgroup of the Anatomical Therapeutic
  Chemical Classification System, a system of alphanumeric codes developed by the
  World Health Organisation (WHO) for the classification of drugs and other
  medical products. It covers drugs designed to have mainly sedative or hypnotic
  actions. Hypnotic drugs are used to induce sleep and treat severe insomnia.
  Sedative drugs are prescribed to reduce excitability or anxiety.
  
  Details of drugs included in the category can be found here:
  http://www.whocc.no/atc_ddd_index/?code=N05C
  

----------

.. _dfn-medication_psychostimulants:

Medication - Psychostimulants and nootropics (N06B)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Whether the client is taking prescribed psychostimulants and nootropics for a mental health condition as assessed at intake assessment, as represented by a code.

:Field name: medication_psychostimulants

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :9: Unknown

:Notes:
  The N06B class of drugs a therapeutic subgroup of the Anatomical Therapeutic
  Chemical Classification System, a system of alphanumeric codes developed by the
  World Health Organisation (WHO) for the classification of drugs and other
  medical products. It covers drugs designed to attention-deficit hyperactivity
  disorder (ADHD) and to improve impaired cognitive abilities.
  
  Details of drugs included in the category can be found here:
  http://www.whocc.no/atc_ddd_index/?code=N06B
  

----------

.. _dfn-service_contact_modality:

Modality
^^^^^^^^

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
  
  2 - Telephone
      Includes any voice based communication that does not use video,
      regardless of the technology used to provide the voice communication.
      For example, this could either be over land line telephone, mobile
      telephone, VoIP.
  
  3 - Video
      Includes any video based communication.
  
  4 - Internet-based
      Any internet based communications that do not fall into the
      2 - Telephone or 3 - Video categories. This includes email communication,
      providing the communication would normally warrant a dated entry in the
      clinical record of the client, involving a third party, such as a
      carer or family member, and/or other professional or mental health worker,
      or other service provider.
  
  Note: If Service Contact Modality is not 'Face to Face' the postcode must
  be entered as unknown 9999.
  

----------

.. _dfn-ndis_participant:

NDIS Participant
^^^^^^^^^^^^^^^^

Is the client a participant in the National Disability Insurance Scheme?, as represented by a code.

:Field name: ndis_participant

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :9: Not stated/inadequately described

----------

.. _dfn-service_contact_no_show:

No Show
^^^^^^^

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

.. _dfn-organisation_path:

Organisation Path
^^^^^^^^^^^^^^^^^

A sequence of colon separated Organisation Keys that fully specifies the Provider Organisation that is responsible for the Episode of Care.

:Field name: organisation_path

:Data type: string

:Required: yes

:Notes:
  A combination of the Primary Health Network's (PHN's) Organisation Key and the
  Provider Organisation's Organisation Key separated by a colon.
  
  .. include:: shared/example-organisation-path.rst
  

----------

.. _dfn-organisation_type_referred_to_at_episode_conclusion:

Organisation type referred to at Episode conclusion
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Type of organisation to which the the client was referred at the Episode conclusion.

:Field name: organisation_type_referred_to_at_episode_conclusion

:Data type: string

:Required: no

:Domain:
  :0: None/Not applicable
  :1: General Practice
  :2: Medical Specialist Consulting Rooms
  :3: Private practice
  :4: Public mental health service
  :5: Public Hospital
  :6: Private Hospital
  :7: Emergency Department
  :8: Community Health Centre
  :9: Drug and Alcohol Service
  :10: Community Support Organisation NFP
  :11: Indigenous Health Organisation
  :12: Child and Maternal Health
  :13: Nursing Service
  :14: Telephone helpline
  :15: Digital health service
  :16: Family Support Service
  :17: School
  :18: Tertiary Education institution
  :19: Housing service
  :20: Centrelink
  :21: Other
  :22: HeadtoHelp / HeadtoHealth Hub
  :23: Other PHN funded service
  :24: AMHC
  :99: Not stated
  
  Multiple space separated values allowed
  

:Notes:
  .. include:: shared/referrer-organisation-type.rst
  

----------

.. _dfn-service_contact_participants:

Participants
^^^^^^^^^^^^

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
    service provider (in addition to the Practitioner/s), without the
    participation of the client or family support network.
  
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

Postcode
^^^^^^^^

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

.. _dfn-practitioner_key:

Practitioner Key
^^^^^^^^^^^^^^^^

A unique identifier for a practitioner within the provider organisation.

:Field name: practitioner_key

:Data type: string (2,50)

:Required: yes

----------

.. _dfn-primary_practitioner_indicator:

Primary Practitioner Indicator
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

An indicator of whether the practitioner was the primary practitioner responsible for the service contact.

:Field name: primary_practitioner_indicator

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No

----------

.. _dfn-principal_diagnosis:

Principal Diagnosis
^^^^^^^^^^^^^^^^^^^

The Principal Diagnosis is the diagnosis established after study to be chiefly responsible for occasioning the client's care during the current Episode of Care.

:Field name: principal_diagnosis

:Data type: string

:Required: yes

:Domain:
  :100: Anxiety disorders (ATAPS)
  :101: Panic disorder
  :102: Agoraphobia
  :103: Social phobia
  :104: Generalised anxiety disorder
  :105: Obsessive-compulsive disorder
  :106: Post-traumatic stress disorder
  :107: Acute stress disorder
  :108: Other anxiety disorder
  :200: Affective (Mood) disorders (ATAPS)
  :201: Major depressive disorder
  :202: Dysthymia
  :203: Depressive disorder NOS
  :204: Bipolar disorder
  :205: Cyclothymic disorder
  :206: Other affective disorder
  :300: Substance use disorders (ATAPS)
  :301: Alcohol harmful use
  :302: Alcohol dependence
  :303: Other drug harmful use
  :304: Other drug dependence
  :305: Other substance use disorder
  :400: Psychotic disorders (ATAPS)
  :401: Schizophrenia
  :402: Schizoaffective disorder
  :403: Brief psychotic disorder
  :404: Other psychotic disorder
  :501: Separation anxiety disorder
  :502: Attention deficit hyperactivity disorder (ADHD)
  :503: Conduct disorder
  :504: Oppositional defiant disorder
  :505: Pervasive developmental disorder
  :506: Other disorder of childhood and adolescence
  :601: Adjustment disorder
  :602: Eating disorder
  :603: Somatoform disorder
  :604: Personality disorder
  :605: Other mental disorder
  :901: Anxiety symptoms
  :902: Depressive symptoms
  :903: Mixed anxiety and depressive symptoms
  :904: Stress related
  :905: Other
  :999: Missing

:Notes:
  Diagnoses are grouped into 8 major categories (9 for Additional Diagnosis):
  
  - 000 - No additional diagnosis (Additional Diagnosis only)
  - 1xx - Anxiety disorders
  - 2xx - Affective (Mood) disorders
  - 3xx - Substance use disorders
  - 4xx - Psychotic disorders
  - 5xx - Disorders with onset usually occurring in childhood and adolescence not listed elsewhere
  - 6xx - Other mental disorders
  - 9xx except 999 - No formal mental disorder but subsyndromal problems
  - 999 - Missing or Unknown
  
  The Principal Diagnosis should be determined by the treating or supervising
  clinical practitioner who is responsible for providing, or overseeing, services
  delivered to the client during their current episode of care. Each episode of
  care must have a Principal Diagnosis recorded and may have an Additional
  Diagnoses. In some instances the client’s Principal Diagnosis may not be clear
  at initial contact and require a period of contact before a reliable diagnosis
  can be made. If a client has more than one diagnosis, the Principal Diagnosis
  should reflect the main presenting problem. Any secondary diagnosis should be
  recorded under the Additional Diagnosis field.
  
  The coding options developed for the PMHC MDS have been selected to balance
  comprehensiveness and brevity. They comprise a mix of the most prevalent mental
  disorders in the Australian adult, child and adolescent population,
  supplemented by less prevalent conditions that may be experienced by clients of
  PHN-commissioned mental health services. The diagnosis options are based on an
  abbreviated set of clinical terms and groupings specified in the Diagnostic and
  Statistical Manual of Mental Disorders Fourth Edition (DSM-IV-TR). These code
  list summarises the approximate 300 unique mental health disorder codes in the
  full DSM-IV to a set to 9 major categories, and 37 individual codes. Diagnoses
  are grouped under higher level categories, based on the DSM-IV. Code numbers
  have been assigned specifically for the PMHC MDS to create a logical ordering
  but are capable of being mapped to both DSM-IV and ICD-10 codes.
  
  Options for recording Principal Diagnosis include the broad category ‘No formal
  mental disorder but subsyndromal problems’ (codes commencing with 9). These
  codes should be used for clients who present with problems that do not meet
  threshold criteria for a formal diagnosis - for example, people experiencing
  subsyndromal symptoms who may be at risk of progressing to a more severe
  symptom level.
  
  Each category has a final entry for capturing other conditions that don’t meet
  the more specific entries in the category. This includes the ‘No formal mental
  disorder but subsyndromal problems’ category. Code 905 (‘Other symptoms’)
  can be used to capture situations where a formal mental disorder has not be
  diagnosed, but the symptoms do not fall under the more specific 9XX series
  entries. The 905 code should not be used where there is a formal but unlisted
  mental disorder. In such a situation code 605 (‘Other mental disorder’)
  should be used.
  
  Reference: Diagnostic and Statistical Manual of Mental Disorders, Fourth
  Edition, Text Revision. Copyright 2000 American Psychiatric Association.
  
  The following responses have been added to allow mapping of ATAPS data to PMHC
  format.
  
  - 100: Anxiety disorders (ATAPS)
  - 200: Affective (Mood) disorders (ATAPS)
  - 300: Substance use disorders (ATAPS)
  - 400: Psychotic disorders (ATAPS)
  
  *Note: These four codes should only be used for Episodes that are migrated
  from ATAPS MDS sources that cannot be described by any other Diagnosis.
  It is expected that the majority of Episodes delivered to clients
  from 1st July, 2017 can be assigned to other diagnoses.*
  
  These responses will only be allowed on episodes where the original
  ATAPS referral date was before 1 July 2017
  
  These responses will only be allowed on episodes with the !ATAPS flag.
  

----------

.. _dfn-principal_focus:

Principal Focus of Treatment Plan
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The range of activities that best describes the overall services intended to be delivered to the client throughout the course of the episode. For most clients, this will equate to the activities that account for most time spent by the service provider.

:Field name: principal_focus

:Data type: string

:Required: yes

:Domain:
  :1: Psychological therapy
  :2: Low intensity psychological intervention
  :3: Clinical care coordination
  :4: Complex care package
  :5: Child and youth-specific mental health services
  :6: Indigenous-specific mental health services
  :7: Other

:Notes:
  Describes the main focus of the services to be delivered to the client for the
  current Episode of Care, selected from a defined list of categories.
  
  Service providers are required to report on the 'Principal Focus of Treatment
  Plan' for all accepted referrals. This requires a judgement to be made about
  the main focus of the services to be delivered to the client for the current
  Episode of Care, made following initial assessment and modifiable at a later
  stage. It is chosen from a defined list of categories, with the provider
  required to select the category that best fits the treatment plan designed for
  the client.
  
  Principal Focus of Treatment Plan is necessarily a judgement made by the
  provider at the outset of service delivery but consistent with good practice,
  should be made on the basis of a treatment plan developed in collaboration with
  the client. It should not be confused with Service Type which is collected at
  each Service Contact.
  
  1 - Psychological therapy
    The treatment plan for the client is primarily based around the delivery of
    psychological therapy by one or more mental health professionals. This
    category most closely matches the type of services delivered under the
    previous ATAPS program where up to 12 individual treatment sessions, and 18
    in exceptional circumstances, could be provided. These sessions could be
    supplemented by up to 10 group-based sessions.
  
    The concept of 'mental health professionals' has a specific meaning defined
    in the various guidance documentation prepared to support PHNs in
    implementation of reforms. It refers to service providers who meet the
    requirements for registration, credentialing or recognition as a qualified
    mental health professional and includes:
  
    - Psychiatrists
    - Registered Psychologists
    - Clinical Psychologists
    - Mental Health Nurses;
    - Occupational Therapists;
    - Social Workers
    - Aboriginal and Torres Strait Islander health workers.
  
  2 - Low intensity psychological intervention
    The treatment plan for the client is primarily based around delivery of
    time-limited, structured psychological interventions that are aimed at
    providing a less costly intervention alternative to 'standard' psychological
    therapy. The essence of low intensity interventions is that they utilise nil
    or relatively little qualified mental health professional time and are
    targeted at people with, or at risk of, mild mental illness. Low intensity
    episodes can be delivered through a range of mechanisms including:
  
    - use of individuals with appropriate competencies but who do not meet the
      requirements for registration, credentialing or recognition as a mental
      health professional;
    - delivery of services principally through group-based programs; and
    - delivery of brief or low cost forms of treatment by mental health
      professionals.
  
  3 - Clinical care coordination
    The treatment plan for the client is primarily based around delivery of a
    range of services where the overarching aim is to coordinate and better
    integrate care for the individual across multiple providers with the aim of
    improving clinical outcomes. Consultation and liaison may occur with primary
    health care providers, acute health, emergency services, rehabilitation and
    support services or other agencies that have some level of responsibility for
    the client’s clinical outcomes. These clinical care coordination and liaison
    activities are expected to account for a significant proportion of service
    contacts delivered throughout these episodes.
  
    Activities focused on working in partnership and liaison with other health
    care and service providers and other individuals to coordinate and integrate
    service delivery to the client with the aim of improving their clinical
    outcomes. Consultation and liaison may occur with primary health care
    providers, acute health, emergency services, rehabilitation and support
    services, family, friends, other support people and carers and other agencies
    that have some level of responsibility for the client’s treatment and/or
    well-being.
  
  4 - Complex Care Package
    The treatment plan for the client is primarily based around the delivery of an
    individually tailored ‘package’ of services for a client with severe and
    complex mental illness who is being managed principally within a primary care
    setting. The overarching requirement is that the client receives an
    individually tailored ‘package’ of services that bundles a range of services
    that extends beyond ‘standard’ service delivery and which is funded through
    innovative, non-standard funding models.
    Note: As outlined in the relevant guidance documentation, only three selected
    PHN Lead Sites with responsibilities for trialling work in this area are
    expected to deliver complex care packages. A wider roll-out may be undertaken
    in the future pending results of the trial.
  
  5 - Child and youth-specific mental health services
    The treatment plan for the client is primarily based around the delivery of a
    range of services for children (0-11 years) or youth (aged 12-24 years) who
    present with a mental illness, or are at risk of mental illness. These
    episodes are characterised by services that are designed specifically for
    children and young people, include a broader range of both clinical and
    non-clinical services and may include a significant component of clinical
    care coordination and liaison. Child and youth-specific mental health
    episodes have substantial flexibility in types of services actually delivered.
  
  6 - Indigenous-specific services
    The treatment plan for the client is primarily based around delivery of
    mental health services that are specifically designed to provide culturally
    appropriate services for Aboriginal and Torres Strait Islander peoples.
  
  7 - Other
     The treatment plan for the client is primarily based around services
     that cannot be described by other categories.
  

----------

.. _dfn-program_type:

Program Type
^^^^^^^^^^^^

The overarching program area that an Intake or Episode record is associated with.

:Field name: program_type

:Data type: string

:Required: yes

:Domain:
  :6: headspace

:Notes:
  6 - headspace
    All data reported through hAPI must use the headspace Program Type.

----------

.. _dfn-referral_date:

Referral Date
^^^^^^^^^^^^^

The date the referrer made the referral.

:Field name: referral_date

:Data type: date

:Required: yes

:Notes:
  The referral date is the date the client was originally referred to an MDS
  reporting service. Typically the referral is made by an external (non-MDS)
  provider - such as a general practitioner, but it may be another MDS reporting
  service or the client themselves.
  
  Where there is a
  linked intake and treatment both the Intake and Episode records must use the
  same date - ie. the date the client was originally referred.
  The referral date is NOT the date that an
  intake service refers a client to a treatment organisation. 
  
  For clients who self refer,  the referral date should be the date
  the client first contacted the intake service or provider organisation.
  For the intake of a client who self referred, the referral date
  will be the same as the Date client contact Intake.
  
  For Date fields, data must be recorded in compliance with the standard format
  used across the National Health Data Dictionary; specifically, dates must be
  of fixed 8 column width in the format DDMMYYYY, with leading zeros used when
  necessary to pad out a value. For instance, 13th March 2008 would appear as
  13032008.
  
  - The referral date for Intakes must not be before 1st January 2020.
  - The referral date for Episodes must not be before 1st January 2014.
  - The referral date must not be in the future.
  
  Referral date was optional in specifications prior to Version 4. In Version 4
  referral date has been made mandatory. In order to export and re-upload episode data
  that was uploaded or entered prior to Version 4 the value '09099999' will be
  used in data exports and allowed for existing episode data without a referral date.
  See `Episode Validations <https://docs.pmhc-mds.com/projects/data-specification/en/v4/validation-rules.html#episode>`_ for rules on
  how this value may be used.

----------

.. _dfn-referrer_organisation_type:

Referrer Organisation Type
^^^^^^^^^^^^^^^^^^^^^^^^^^

Type of organisation in which the referring professional is based.

:Field name: referrer_organisation_type

:Data type: string

:Required: yes

:Domain:
  :1: General Practice
  :2: Medical Specialist Consulting Rooms
  :3: Private practice
  :4: Public mental health service
  :5: Public Hospital
  :6: Private Hospital
  :7: Emergency Department
  :8: Community Health Centre
  :9: Drug and Alcohol Service
  :10: Community Support Organisation NFP
  :11: Indigenous Health Organisation
  :12: Child and Maternal Health
  :13: Nursing Service
  :14: Telephone helpline
  :15: Digital health service
  :16: Family Support Service
  :17: School
  :18: Tertiary Education institution
  :19: Housing service
  :20: Centrelink
  :21: Other
  :98: N/A - Self referral
  :99: Not stated

:Notes:
  .. include:: shared/referrer-organisation-type.rst
  
  Not applicable should only be selected in instances of Self referral.
  
  Where there is a linked intake and treatment, both the Intake and Episode records
  must use the same referrer organisation type - ie the intake service is NOT the referrer.

----------

.. _dfn-referrer_profession:

Referrer Profession
^^^^^^^^^^^^^^^^^^^

Profession of the provider who referred the client.

:Field name: referrer_profession

:Data type: string

:Required: yes

:Domain:
  :1: General Practitioner
  :2: Psychiatrist
  :3: Obstetrician
  :4: Paediatrician
  :5: Other Medical Specialist
  :6: Midwife
  :7: Maternal Health Nurse
  :8: Psychologist
  :9: Mental Health Nurse
  :10: Social Worker
  :11: Occupational therapist
  :12: Aboriginal Health Worker
  :13: Educational professional
  :14: Early childhood service worker
  :15: Other
  :98: N/A - Self referral
  :99: Not stated

:Notes:
  New arrangements for some services delivered in primary mental health care
  allows clients to refer themselves for treatment. Therefore, 'Self'
  is a response option included within 'Referrer profession'.
  
  Where there is a linked intake and treatment, both the Intake and Episode records
  must use the same referrer profession - ie the intake service is not the referrer.

----------

.. _dfn-service_contact_date:

Service Contact Date
^^^^^^^^^^^^^^^^^^^^

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

.. _dfn-service_contact_key:

Service Contact Key
^^^^^^^^^^^^^^^^^^^

This is a number or code assigned to each service contact. The Service Contact Key is unique and stable for each service contact at the level of the Provider Organisation.

:Field name: service_contact_key

:Data type: string (2,50)

:Required: yes

:Notes:
  PMHC MDS keys are case sensitive and must have between 2-50 valid unicode characters.
  Keys must start with A-Za-z0-9 (POSIX :alnum:).
  
  Where data is being exported from client systems, these keys can be auto generated,
  providing that a key does not change once it is assigned.
  
  Keys must be generated by the organisation to be unique at the Provider
  Organisation level and must persist across time. Creation of keys in
  this way allows records to be merged (where duplicate keys of the same record type have been
  identified) without having to re-allocate keys since they can
  never clash.
  
  A recommended approach for the creation of keys is to compute `random
  UUIDs <https://en.wikipedia.org/wiki/Universally_unique_identifier>`_.

----------

.. _dfn-service_contact_practitioner_key:

Service Contact Practitioner Key
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This is a number or code assigned to each service contact practitioner. The Service Contact Practitioner Key is unique and stable for each service contact practitioner at the level of the Provider Organisation.

:Field name: service_contact_practitioner_key

:Data type: string (2,50)

:Required: yes

:Notes:
  PMHC MDS keys are case sensitive and must have between 2-50 valid unicode characters.
  Keys must start with A-Za-z0-9 (POSIX :alnum:).
  
  Where data is being exported from client systems, these keys can be auto generated,
  providing that a key does not change once it is assigned.
  
  Keys must be generated by the organisation to be unique at the Provider
  Organisation level and must persist across time. Creation of keys in
  this way allows records to be merged (where duplicate keys of the same record type have been
  identified) without having to re-allocate keys since they can
  never clash.
  
  A recommended approach for the creation of keys is to compute `random
  UUIDs <https://en.wikipedia.org/wiki/Universally_unique_identifier>`_.

----------

.. _dfn-service_contact_tags:

Service Contact Tags
^^^^^^^^^^^^^^^^^^^^

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

Service Contact Type
^^^^^^^^^^^^^^^^^^^^

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
  :9: Psychosocial support
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
     Psychological interventions that do not meet criteria for structured
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
  
  9 - Psychosocial support
    Service providers are required to report on Service Contact Type for every
    contact with a client. This requires a judgement about the main service
    delivered at each contact, selected from a small list of options, and based
    on the activity that accounted for most provider time. Service Contact Type
    complements Principal Focus of Treatment Plan by capturing information to
    understand the mix of services provided within an individual episode of care.
  
    Service Contact Type should be coded as Psychosocial Support (code 9) where
    the main services delivered during the contact involved the delivery of
    psychosocial support services. Psychosocial support services are defined for
    PMHC MDS purposes as services that focus on building capacity and stability
    in one or more of the following areas:
  
    * social skills and friendships, family connections;
    * managing daily living needs;
    * financial management and budgeting;
    * finding and maintaining a home;
    * vocational skills and goals, including volunteering;
    * educational and training goals;
    * maintaining physical wellbeing, including exercise;
    * building broader life skills including confidence and resilience.
  
    These services are usually delivered by a range of non-clinical providers
    including peer support workers with lived experience of mental illness.
  
    Service Contacts recorded as psychosocial support may be delivered in all
    episodes of care, regardless of episode type.  However, it is expected that
    they will be mainly associated with episodes where the Principal Focus of
    Treatment Plan is classified as Psychosocial Support.
  
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
  
  99 - Missing
    To be used for headspace uploads only.
  

----------

.. _dfn-income_source:

Source of Cash Income
^^^^^^^^^^^^^^^^^^^^^

The source from which a person derives the greatest proportion of his/her income, as represented by a code.

:Field name: income_source

:Data type: string

:Required: yes

:Domain:
  :0: N/A - Client aged less than 16 years
  :1: Disability Support Pension
  :2: Other pension or benefit (not superannuation)
  :3: Paid employment
  :4: Compensation payments
  :5: Other (e.g. superannuation, investments etc.)
  :6: Nil income
  :7: Not known
  :9: Not stated/inadequately described

:Notes:
  This data standard is not applicable to person's aged less than 16 years.
  
  This item refers to the source by which a person derives most (equal to or
  greater than 50%) of his/her income. If the person has multiple sources of
  income and none are equal to or greater than 50%, the one which contributes
  the largest percentage should be counted.
  
  This item refers to a person's own main source of income, not that of a
  partner or of other household members. If it is difficult to determine a
  'main source of income' over the reporting period (i.e. it may vary over
  time) please report the main source of income during the reference week.
  
  Code 7 'Not known' should only be recorded when it has not been possible for
  the service user or their carer/family/advocate to provide the information
  (i.e. they have been asked but do not know).
  

:METeOR: `386449 <http://meteor.aihw.gov.au/content/index.phtml/itemId/386449>`__

----------

.. _dfn-service_contact_start_time:

Start Time
^^^^^^^^^^

The start time of each mental health service contact between a health service provider and patient/client.

:Field name: service_contact_start_time

:Data type: time

:Required: yes

:Notes:
  Notes: Indicates the time at which the Service Contact began. Time should be
  recorded in 24-hour time in the format HH:MM. Leading zeroes are accepted but
  not required. For example, 8:30 in the morning could be 8:30 or 08:30 and 3:45
  in the afternoon would be 15:45.
  
  The end-of-day flag "24:00" may be used as a missing time value for any
  existing Service Contacts that have previously been added to the MDS without
  a start time. See Validations for start date are listed at
  `Service Contact Validations <https://docs.pmhc-mds.com/projects/data-specification/en/v4/validation-rules.html#https://docs.pmhc-mds.com/projects/data-specification/en/v4/validation-rules.html#service-contact>`_ for rules on
  how the end-of-day value may be used.
  

----------

.. _dfn-suicide_referral_flag:

Suicide Referral Flag
^^^^^^^^^^^^^^^^^^^^^

Identifies those individuals where a recent history of suicide attempt, or suicide risk, was a factor noted in the referral that underpinned the person's needs for assistance at intake or entry to the episode, as represented by a code.

:Field name: suicide_referral_flag

:Data type: string

:Required: yes

:Domain:
  :1: Yes
  :2: No
  :9: Unknown

:Notes:
  Where there is a linked intake and treatment, both the Intake and Episode records
  must use the same suicide referral flag.

----------

.. _dfn-value:

Value
^^^^^

The metadata value.

:Field name: value

:Data type: string

:Required: yes

:Notes:
  Please refer to :ref:`metadata-format` for an example of the metadata file/worksheet that
  must be used with this specification.

----------

.. _dfn-service_contact_venue:

Venue
^^^^^

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
  :8: Residential aged care facility
  :9: School or other educational centre
  :10: Client's Workplace
  :11: Other
  :12: Aged care centre - non-residential
  :98: Not applicable (Service Contact Modality is not face to face)
  :99: Not stated

:Notes:
  Note that this data item concerns only where the service contact took place.
  It is not about where the client lives. Thus, if a resident of an aged care
  residential facility is seen at another venue (e.g., at a GP Clinic), then
  the Service Contact Venue should be recorded as ‘GP Practice’ (code 3) to
  accurately reflect where the contact took place.
  
  Values other than ‘98 - Not applicable’ only to be specified when Service Contact
  Modality is ‘Face to Face’.
  
  6 - Other primary care setting
    This code is suitable for primary care settings such as community health centres.
  
  8 - Residential aged care facility
    Use this code when the client is seen at an aged care residential facility.
  
  12 - Aged care centre - non-residential
    Use this code when the client is seen at a non-residential aged care centre
    (e.g., community day program centre for older people).
  
  98 - Not applicable (Service Contact Modality is not face to face)
    This code must only to be used where the Service Contact Modality is not
    face to face
  
  All other data items would be recorded as per the guidelines that apply to
  those items – there are no special requirements specific to delivery of
  services to residents of aged care facilities.  For example, any of the
  episode of care types recorded under the Principal Focus of Treatment Plan
  may apply; similarly, service contacts delivered to aged care residents may
  be any of the options available in Service Contact Type field.
  

----------

