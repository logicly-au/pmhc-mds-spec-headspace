Definitions
-----------

.. _dfn-measure_date:

Collection Occasion - Measure Date
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The date the measure was given.

:Field name: measure_date

:Data type: date

:Required: yes

:Notes:
  For Date fields, data must be recorded in compliance with the standard format
  used across the National Health Data Dictionary; specifically, dates must be
  of fixed 8 column width in the format DDMMYYYY, with leading zeros used when
  necessary to pad out a value. For instance, 13th March 2008 would appear as
  13032008.
  
  If the date the measure was given is unknown, 09099999 should be used.
  
  - The measure date must not be before 1st January 2016.
  
  - The measure date must not be before `PMHC MDS Episode - Referral Date <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#dfn-referral-date>`_
  
  - The measure date must not be after `PMHC MDS Episode - End Date <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html#dfn-episode-end-date>`_
  
  - The measure date must not be in the future.
  

----------

.. _dfn-reason_for_collection:

Collection Occasion - Reason
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The reason for the collection of the outcome measures on the identified Outcome Collection Occasion.

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

.. _dfn-collection_occasion_key:

Collection Occasion Key
^^^^^^^^^^^^^^^^^^^^^^^

This is a number or code assigned to each collection occasion of outcome measures. The Collection Occasion Key is unique and stable for each collection occasion at the level of the organisation.

:Field name: collection_occasion_key

:Data type: string (2,50)

:Required: yes

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
  
  Here is an example organisation structure showing the Organisation Path for each organisation:
  
  +------------------+-------------------------------+---------------------------------------------+----------------------------+-------------------+
  | Organisation Key | Organisation Name             | Organisation Type                           | Commissioning Organisation | Organisation Path |
  +==================+===============================+=============================================+============================+===================+
  | PHN999           | Test PHN                      | Primary Health Network                      | None                       | PHN999            |
  +------------------+-------------------------------+---------------------------------------------+----------------------------+-------------------+
  | PO101            | Test Provider Organisation    | Private Allied Health Professional Practice | PHN999                     | PHN999:PO101      |
  +------------------+-------------------------------+---------------------------------------------+----------------------------+-------------------+
  

----------

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

.. _dfn-k5_item1:

K5 - Question 1
^^^^^^^^^^^^^^^

In the last 4 weeks, about how often did you feel nervous?

:Field name: k5_item1

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k5_item2:

K5 - Question 2
^^^^^^^^^^^^^^^

In the last 4 weeks, about how often did you feel without hope?

:Field name: k5_item2

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k5_item3:

K5 - Question 3
^^^^^^^^^^^^^^^

In the last 4 weeks, about how often did you feel restless or jumpy?

:Field name: k5_item3

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k5_item4:

K5 - Question 4
^^^^^^^^^^^^^^^

In the last 4 weeks, about how often did you feel everything was an effort?

:Field name: k5_item4

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k5_item5:

K5 - Question 5
^^^^^^^^^^^^^^^

In the last 4 weeks, about how often did you feel so sad that nothing could cheer you up?

:Field name: k5_item5

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k5_score:

K5 - Score
^^^^^^^^^^

The overall K5 score.

:Field name: k5_score

:Data type: integer

:Required: yes

:Domain:
  5 - 25, 99 = Not stated / Missing

:Notes:
  The K5 Total score is based on the sum of K5 item 1 through 5 (range: 5-25).
  
  The Total score is computed as the sum of the item scores. If any item has not
  been completed (that is, has not been coded 1, 2, 3, 4, 5), it is excluded from
  the calculation and not counted as a valid item. If any item is missing, the
  Total Score is set as missing.
  
  For the Total score, the missing value used should be 99.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’
  

----------

.. _dfn-k5_tags:

K5 - Tags
^^^^^^^^^

List of tags for the collection occasion.

:Field name: k5_tags

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

.. _dfn-k10p_item1:

K10+ - Question 1
^^^^^^^^^^^^^^^^^

In the past 4 weeks, about how often did you feel tired out for no good reason?

:Field name: k10p_item1

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item2:

K10+ - Question 2
^^^^^^^^^^^^^^^^^

In the past 4 weeks, about how often did you feel nervous?

:Field name: k10p_item2

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item3:

K10+ - Question 3
^^^^^^^^^^^^^^^^^

In the past 4 weeks, about how often did you feel so nervous that nothing could calm you down?

:Field name: k10p_item3

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item4:

K10+ - Question 4
^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel hopeless?

:Field name: k10p_item4

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item5:

K10+ - Question 5
^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel restless or fidgety?

:Field name: k10p_item5

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item6:

K10+ - Question 6
^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel so restless you could not sit still?

:Field name: k10p_item6

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item7:

K10+ - Question 7
^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel depressed?

:Field name: k10p_item7

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item8:

K10+ - Question 8
^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel that everything was an effort?

:Field name: k10p_item8

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item9:

K10+ - Question 9
^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel so sad that nothing could cheer you up?

:Field name: k10p_item9

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item10:

K10+ - Question 10
^^^^^^^^^^^^^^^^^^

In the past 4 weeks, how often did you feel worthless?

:Field name: k10p_item10

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When reporting total score use ‘9 - Not stated / Missing’ 
  

----------

.. _dfn-k10p_item11:

K10+ - Question 11
^^^^^^^^^^^^^^^^^^

In the past four weeks, how many days were you totally unable to work, study or manage your day to day activities because of these feelings?

:Field name: k10p_item11

:Data type: integer

:Required: yes

:Domain:
  0 - 28, 99 = Not stated / Missing

:Notes:
  When the client's responses to Q1-10 are all recorded as 1 'None of the time', 
  they are not required to answer questions 11-14. Where this question has not been
  answered a response of '99 - Not stated / Missing' should be selected.
  

----------

.. _dfn-k10p_item12:

K10+ - Question 12
^^^^^^^^^^^^^^^^^^

Aside from those days, in the past four weeks, how many days were you able to work or study or manage your day to day activities, but had to cut down on what you did because of these feelings?

:Field name: k10p_item12

:Data type: integer

:Required: yes

:Domain:
  0 - 28, 99 = Not stated / Missing

:Notes:
  When the client's responses to Q1-10 are all recorded as 1 'None of the time',
  they are not required to answer questions 11-14. Where this question has not been
  answered a response of '99 - Not stated / Missing' should be selected.
  

----------

.. _dfn-k10p_item13:

K10+ - Question 13
^^^^^^^^^^^^^^^^^^

In the past four weeks, how many times have you seen a doctor or any other health professional about these feelings?

:Field name: k10p_item13

:Data type: integer

:Required: yes

:Domain:
  0 - 89, 99 = Not stated / Missing

:Notes:
  When the client's responses to Q1-10 are all recorded as 1 'None of the time',
  they are not required to answer questions 11-14. Where this question has not been
  answered a response of '99 - Not stated / Missing' should be selected.
  

----------

.. _dfn-k10p_item14:

K10+ - Question 14
^^^^^^^^^^^^^^^^^^

In the past four weeks, how often have physical health problems been the main cause of these feelings?

:Field name: k10p_item14

:Data type: string

:Required: yes

:Domain:
  :1: None of the time
  :2: A little of the time
  :3: Some of the time
  :4: Most of the time
  :5: All of the time
  :9: Not stated / Missing

:Notes:
  When the client's responses to Q1-10 are all recorded as 1 'None of the time',
  they are not required to answer questions 11-14. Where this question has not been
  answered a response of '99 - Not stated / Missing' should be selected.
  

----------

.. _dfn-k10p_score:

K10+ - Score
^^^^^^^^^^^^

The overall K10 score.

:Field name: k10p_score

:Data type: integer

:Required: yes

:Domain:
  10 - 50, 99 = Not stated / Missing

:Notes:
  The K10 Total score is based on the sum of K10 item 01 through 10 (range: 10-50).
  Items 11 through 14 are excluded from the total because they are separate
  measures of disability associated with the problems referred to in the preceding
  ten items.
  
  The Total score is computed as the sum of the scores for items 1 to 10. If any
  item has not been completed (that is, has not been coded 1, 2, 3, 4, 5), it is
  excluded from the total with the proviso that a competed K10 with more than one
  missing item is regarded as invalid.
  
  If more than one item of items 1 to 10 are missing, the Total Score is set as
  missing. Where this is the case, the missing value used should be 99.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’.
  

----------

.. _dfn-k10p_tags:

K10+ - Tags
^^^^^^^^^^^

List of tags for the collection occasion.

:Field name: k10p_tags

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
  
  Here is an example organisation structure showing the Organisation Path for each organisation:
  
  +------------------+-------------------------------+---------------------------------------------+----------------------------+-------------------+
  | Organisation Key | Organisation Name             | Organisation Type                           | Commissioning Organisation | Organisation Path |
  +==================+===============================+=============================================+============================+===================+
  | PHN999           | Test PHN                      | Primary Health Network                      | None                       | PHN999            |
  +------------------+-------------------------------+---------------------------------------------+----------------------------+-------------------+
  | PO101            | Test Provider Organisation    | Private Allied Health Professional Practice | PHN999                     | PHN999:PO101      |
  +------------------+-------------------------------+---------------------------------------------+----------------------------+-------------------+
  

----------

.. _dfn-practitioner_key:

Practitioner Key
^^^^^^^^^^^^^^^^

A unique identifier for a practitioner within the provider organisation.

:Field name: practitioner_key

:Data type: string (2,50)

:Required: yes

----------

.. _dfn-sdq_version:

SDQ Collection Occasion - Version
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The version of the SDQ collected.

:Field name: sdq_version

:Data type: string

:Required: yes

:Domain:
  :PC101: Parent Report Measure 4-10 yrs, Baseline version, Australian Version 1
  :PC201: Parent Report Measure 4-10 yrs, Follow Up version, Australian Version 1
  :PY101: Parent Report Measure 11-17 yrs, Baseline version, Australian Version 1
  :PY201: Parent Report Measure 11-17 yrs, Follow Up version, Australian Version 1
  :YR101: Self report Version, 11-17 years, Baseline version, Australian Version 1
  :YR201: Self report Version, 11-17 years, Follow Up version, Australian Version 1

:Notes:
  Domain values align with those collected in the NOCC dataset as defined at
  https://webval.validator.com.au/spec/NOCC/current/SDQ/SDQVer
  

----------

.. _dfn-sdq_conduct_problem:

SDQ - Conduct Problem Scale
^^^^^^^^^^^^^^^^^^^^^^^^^^^


:Field name: sdq_conduct_problem

:Data type: integer

:Required: yes

:Domain:
  0 - 10, 99 = Not stated / Missing

:Notes:
  See `PMHC MDS SDQ items and Scale Summary scores <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html##scoring-the-sdq>`_ for instructions on scoring the Conduct Problem Scale.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’.
  

----------

.. _dfn-sdq_emotional_symptoms:

SDQ - Emotional Symptoms Scale
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


:Field name: sdq_emotional_symptoms

:Data type: integer

:Required: yes

:Domain:
  0 - 10, 99 = Not stated / Missing

:Notes:
  See `PMHC MDS SDQ items and Scale Summary scores <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html##scoring-the-sdq>`_ for instructions on scoring the Emotional Symptoms Scale.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’.
  

----------

.. _dfn-sdq_hyperactivity:

SDQ - Hyperactivity Scale
^^^^^^^^^^^^^^^^^^^^^^^^^


:Field name: sdq_hyperactivity

:Data type: integer

:Required: yes

:Domain:
  0 - 10, 99 = Not stated / Missing

:Notes:
  See `PMHC MDS SDQ items and Scale Summary scores <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html##scoring-the-sdq>`_ for instructions on scoring the Hyperactivity Scale.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’.
  

----------

.. _dfn-sdq_impact:

SDQ - Impact Score
^^^^^^^^^^^^^^^^^^


:Field name: sdq_impact

:Data type: integer

:Required: yes

:Domain:
  0 - 10, 99 = Not stated / Missing

:Notes:
  See `PMHC MDS SDQ items and Scale Summary scores <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html##scoring-the-sdq>`_ for instructions on scoring the Impact Score.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’.
  

----------

.. _dfn-sdq_peer_problem:

SDQ - Peer Problem Scale
^^^^^^^^^^^^^^^^^^^^^^^^


:Field name: sdq_peer_problem

:Data type: integer

:Required: yes

:Domain:
  0 - 10, 99 = Not stated / Missing

:Notes:
  See `PMHC MDS SDQ items and Scale Summary scores <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html##scoring-the-sdq>`_ for instructions on scoring the Peer Problem Scale.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’.
  

----------

.. _dfn-sdq_prosocial:

SDQ - Prosocial Scale
^^^^^^^^^^^^^^^^^^^^^


:Field name: sdq_prosocial

:Data type: integer

:Required: yes

:Domain:
  0 - 10, 99 = Not stated / Missing

:Notes:
  See `PMHC MDS SDQ items and Scale Summary scores <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html##scoring-the-sdq>`_ for instructions on scoring the Prosocial Scale.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item1:

SDQ - Question 1
^^^^^^^^^^^^^^^^

Parent Report: Considerate of other people's feelings.

Youth Self Report: I try to be nice to other people. I care about their feelings.

:Field name: sdq_item1

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item2:

SDQ - Question 2
^^^^^^^^^^^^^^^^

Parent Report: Restless, overactive, cannot stay still for long.

Youth Self Report: I am restless, I cannot stay still for long.

:Field name: sdq_item2

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item3:

SDQ - Question 3
^^^^^^^^^^^^^^^^

Parent Report: Often complains of headaches, stomach-aches or sickness.

Youth Self Report: I get a lot of headaches, stomach-aches or sickness.

:Field name: sdq_item3

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item4:

SDQ - Question 4
^^^^^^^^^^^^^^^^

Parent Report: Shares readily with other children {for example toys, treats, pencils} / young people {for example CDs, games, food}.

Youth Self Report: I usually share with others, for examples CDs, games, food.

:Field name: sdq_item4

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item5:

SDQ - Question 5
^^^^^^^^^^^^^^^^

Parent Report: Often loses temper.

Youth Self Report: I get very angry and often lose my temper.

:Field name: sdq_item5

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item6:

SDQ - Question 6
^^^^^^^^^^^^^^^^

Parent Report: {Rather solitary, prefers to play alone} / {would rather be alone than with other young people}.

Youth Self Report: I would rather be alone than with people of my age.

:Field name: sdq_item6

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item7:

SDQ - Question 7
^^^^^^^^^^^^^^^^

Parent Report: {Generally well behaved} / {Usually does what adults requests}.

Youth Self Report: I usually do as I am told.

:Field name: sdq_item7

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item8:

SDQ - Question 8
^^^^^^^^^^^^^^^^

Parent Report: Many worries or often seems worried.

Youth Self Report: I worry a lot.

:Field name: sdq_item8

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item9:

SDQ - Question 9
^^^^^^^^^^^^^^^^

Parent Report: Helpful if someone is hurt, upset or feeling ill.

Youth Self Report: I am helpful if someone is hurt, upset or feeling ill.

:Field name: sdq_item9

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item10:

SDQ - Question 10
^^^^^^^^^^^^^^^^^

Parent Report: Constantly fidgeting or squirming.

Youth Self Report: I am constantly fidgeting or squirming.

:Field name: sdq_item10

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item11:

SDQ - Question 11
^^^^^^^^^^^^^^^^^

Parent Report: Has at least one good friend.

Youth Self Report: I have one good friend or more.

:Field name: sdq_item11

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item12:

SDQ - Question 12
^^^^^^^^^^^^^^^^^

Parent Report: Often fights with other {children} or bullies them / {young people}.

Youth Self Report: I fight a lot. I can make other people do what I want.

:Field name: sdq_item12

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item13:

SDQ - Question 13
^^^^^^^^^^^^^^^^^

Parent Report: Often unhappy, depressed or tearful.

Youth Self Report: I am often unhappy, depressed or tearful.

:Field name: sdq_item13

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item14:

SDQ - Question 14
^^^^^^^^^^^^^^^^^

Parent Report: Generally liked by other {children} / {young people}

Youth Self Report: Other people my age generally like me.

:Field name: sdq_item14

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item15:

SDQ - Question 15
^^^^^^^^^^^^^^^^^

Parent Report: Easily distracted, concentration wanders.

Youth Self Report: I am easily distracted, I find it difficult to concentrate.

:Field name: sdq_item15

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item16:

SDQ - Question 16
^^^^^^^^^^^^^^^^^

Parent Report: Nervous or {clingy} in new situations, easily loses confidence {omit clingy in PY}.

Youth Self Report: I am nervous in new situations. I easily lose confidence.

:Field name: sdq_item16

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item17:

SDQ - Question 17
^^^^^^^^^^^^^^^^^

Parent Report: Kind to younger children.

Youth Self Report: I am kind to younger people.

:Field name: sdq_item17

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item18:

SDQ - Question 18
^^^^^^^^^^^^^^^^^

Parent Report: Often lies or cheats.

Youth Self Report: I am often accused of lying or cheating.

:Field name: sdq_item18

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item19:

SDQ - Question 19
^^^^^^^^^^^^^^^^^

Parent Report: Picked on or bullied by {children} / {youth}.

Youth Self Report: Other children or young people pick on me or bully me.

:Field name: sdq_item19

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item20:

SDQ - Question 20
^^^^^^^^^^^^^^^^^

Parent Report: Often volunteers to help others (parents, teachers, {other} children) / Omit 'other' in PY.

Youth Self Report: I often volunteer to help others (parents, teachers, children).

:Field name: sdq_item20

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item21:

SDQ - Question 21
^^^^^^^^^^^^^^^^^

Parent Report: Thinks things out before acting.

Youth Self Report: I think before I do things.

:Field name: sdq_item21

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item22:

SDQ - Question 22
^^^^^^^^^^^^^^^^^

Parent Report: Steals from home, school or elsewhere.

Youth Self Report: I take things that are not mine from home, school or elsewhere.

:Field name: sdq_item22

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item23:

SDQ - Question 23
^^^^^^^^^^^^^^^^^

Parent Report: Gets along better with adults than with other {children} / {youth}.

Youth Self Report: I get along better with adults than with people my own age.

:Field name: sdq_item23

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item24:

SDQ - Question 24
^^^^^^^^^^^^^^^^^

Parent Report: Many fears, easily scared.

Youth Self Report: I have many fears, I am easily scared.

:Field name: sdq_item24

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item25:

SDQ - Question 25
^^^^^^^^^^^^^^^^^

Parent Report: Good attention span sees chores or homework through to the end.

Youth Self Report: I finish the work I'm doing. My attention is good.

:Field name: sdq_item25

:Data type: string

:Required: yes

:Domain:
  :0: Not True
  :1: Somewhat True
  :2: Certainly True
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item26:

SDQ - Question 26
^^^^^^^^^^^^^^^^^

Parent Report: Overall, do you think that your child has difficulties in any of the following areas: emotions, concentration, behaviour or being able to get along with other people?

Youth Self Report: Overall, do you think that you have difficulties in any of the following areas: emotions, concentration, behaviour or being able to get along with other people?

:Field name: sdq_item26

:Data type: string

:Required: yes

:Domain:
  :0: No
  :1: Yes - minor difficulties
  :2: Yes - definite difficulties
  :3: Yes - severe difficulties
  :7: Unable to rate (insufficient information)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item27:

SDQ - Question 27
^^^^^^^^^^^^^^^^^

Parent Report: How long have these difficulties been present?

Youth Self Report: How long have these difficulties been present?

:Field name: sdq_item27

:Data type: string

:Required: yes

:Domain:
  :0: Less than a month
  :1: 1-5 months
  :2: 6-12 months
  :3: Over a year
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions:
  - PC101
  - PY101
  - YR101
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item28:

SDQ - Question 28
^^^^^^^^^^^^^^^^^

Parent Report: Do the difficulties upset or distress your child?

Youth Self Report: Do the difficulties upset or distress you?

:Field name: sdq_item28

:Data type: string

:Required: yes

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item29:

SDQ - Question 29
^^^^^^^^^^^^^^^^^

Parent Report: Do the difficulties interfere with your child's everyday life in the following areas? HOME LIFE.

Youth Self Report: Do the difficulties interfere with your everyday life in the following areas? HOME LIFE.

:Field name: sdq_item29

:Data type: string

:Required: yes

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item30:

SDQ - Question 30
^^^^^^^^^^^^^^^^^

Parent Report: Do the difficulties interfere with your child's everyday life in the following areas? FRIENDSHIPS.

Youth Self Report: Do the difficulties interfere with your everyday life in the following areas? FRIENDSHIPS.

:Field name: sdq_item30

:Data type: string

:Required: yes

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item31:

SDQ - Question 31
^^^^^^^^^^^^^^^^^

Parent Report: Do the difficulties interfere with your child's everyday life in the following areas? CLASSROOM LEARNING.

Youth Self Report: Do the difficulties interfere with your everyday life in the following areas? CLASSROOM LEARNING

:Field name: sdq_item31

:Data type: string

:Required: yes

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item32:

SDQ - Question 32
^^^^^^^^^^^^^^^^^

Parent Report: Do the difficulties interfere with your child's everyday life in the following areas? LEISURE ACTIVITIES.

Youth Self Report: Do the difficulties interfere with your everyday life in the following areas? LEISURE ACTIVITIES.

:Field name: sdq_item32

:Data type: string

:Required: yes

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item33:

SDQ - Question 33
^^^^^^^^^^^^^^^^^

Parent Report: Do the difficulties put a burden on you or the family as a whole?

Youth Self Report: Do the difficulties make it harder for those around you (family, friends, teachers, etc)?

:Field name: sdq_item33

:Data type: string

:Required: yes

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions: All
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item34:

SDQ - Question 34
^^^^^^^^^^^^^^^^^

Parent Report: Since coming to the services, are your child's problems:

Youth Self Report: 'Since coming to the service, are your problems:

:Field name: sdq_item34

:Data type: string

:Required: yes

:Domain:
  :0: Much worse
  :1: A bit worse
  :2: About the same
  :3: A bit better
  :4: Much better
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions:
  
  - PC201
  - PY201
  - YR201
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item35:

SDQ - Question 35
^^^^^^^^^^^^^^^^^

Has coming to the service been helpful in other ways eg. providing information or making the problems bearable?

:Field name: sdq_item35

:Data type: string

:Required: yes

:Domain:
  :0: Not at all
  :1: A little
  :2: A medium amount
  :3: A great deal
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions:
  
  - PC201
  - PY201
  - YR201
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item36:

SDQ - Question 36
^^^^^^^^^^^^^^^^^

Over the last 6 months have your child's teachers complained of fidgetiness, restlessness or overactivity?

:Field name: sdq_item36

:Data type: string

:Required: yes

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions:
  
  - PC101
  - PY101
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item37:

SDQ - Question 37
^^^^^^^^^^^^^^^^^

Over the last 6 months have your child's teachers complained of poor concentration or being easily distracted?

:Field name: sdq_item37

:Data type: string

:Required: yes

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions:
  
  - PC101
  - PY101
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item38:

SDQ - Question 38
^^^^^^^^^^^^^^^^^

Over the last 6 months have your child's teachers complained of acting without thinking, frequently butting in, or not waiting for his or her turn?

:Field name: sdq_item38

:Data type: string

:Required: yes

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions:
  
  - PC101
  - PY101
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item39:

SDQ - Question 39
^^^^^^^^^^^^^^^^^

Does your family complain about you having problems with overactivity or poor concentration?

:Field name: sdq_item39

:Data type: string

:Required: yes

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions:
  
  - YR101
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item40:

SDQ - Question 40
^^^^^^^^^^^^^^^^^

Do your teachers complain about you having problems with overactivity or poor concentration?

:Field name: sdq_item40

:Data type: string

:Required: yes

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions:
  
  - YR101
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item41:

SDQ - Question 41
^^^^^^^^^^^^^^^^^

Does your family complain about you being awkward or troublesome?

:Field name: sdq_item41

:Data type: string

:Required: yes

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions:
  
  - YR101
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_item42:

SDQ - Question 42
^^^^^^^^^^^^^^^^^

Do your teachers complain about you being awkward or troublesome?

:Field name: sdq_item42

:Data type: string

:Required: yes

:Domain:
  :0: No
  :1: A little
  :2: A lot
  :7: Unable to rate (insufficient information)
  :8: Not applicable (collection not required - item not included in the version collected, or SDQ Item 26 = 0)
  :9: Not stated / Missing

:Notes:
  Required Versions:
  
  - YR101
  
  When reporting subscale and total scores use ‘9 - Not stated / Missing’.
  

----------

.. _dfn-sdq_tags:

SDQ - Tags
^^^^^^^^^^

List of tags for the collection occasion.

:Field name: sdq_tags

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

.. _dfn-sdq_total:

SDQ - Total Difficulties Score
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


:Field name: sdq_total

:Data type: integer

:Required: yes

:Domain:
  0 - 40, 99 = Not stated / Missing

:Notes:
  See `PMHC MDS SDQ items and Scale Summary scores <https://docs.pmhc-mds.com/data-specification/data-model-and-specifications.html##scoring-the-sdq>`_ for instructions on scoring the Total Difficulties Score.
  
  When reporting individual item scores use ‘99 - Not stated / Missing’.
  

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

.. _dfn-funding_source:

Service Contact - Funding Source
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The source of funding for a service contact

:Field name: funding_source

:Data type: string

:Required: yes

:Domain:
  :0: PHN funded
  :1: headspace Grant
  :2: MBS
  :3: In Kind
  :4: Other Government Funding - Federal
  :5: Other Government Funding - State
  :6: Other
  :99: Missing

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
  :8: Residential aged care facility
  :9: School or other educational centre
  :10: Client's Workplace
  :11: Other
  :12: Aged care centre - non-residential
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

