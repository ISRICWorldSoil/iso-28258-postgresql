Observations & Measurements {#sec:om}
======================================

## Main concepts

O&M [@ISO-19156] presents a general framework to encode measurements of natural
phenomena of any kind. The concept of `Observation` is at its core, in essence a triplet of
three other concepts:

- `Property`: an individual characteristic of a feature of interest. E.g. sand
  fraction in a profile element.

- `Procedure`: an action performed on a feature of interest (or sampling
  feature) in order to measure a property. E.g. sieving with 2 mm and 0.05
  mm grades.

- `Unit of measure`: defines the magnitude of a measurement executed with a
  particular procedure on a property. E.g. per mille.

The `Result` class provides the actual placeholder for measurement results. It
refers to a feature of interest and an observation and provides a matching value.
The nature of this value is left completely open, it can be of any kind. 

## Physio-chemical Observations

Observations of physio-chemical properties of the soil provide a full
introduction to the implementation of O&M in a relational database. These
observations produce numerical results and refer to relatively well known
procedures of wet chemistry and related soil specimen treatment.

The model proposed by O&M can be transposed to a relational structure nearly
literally, however, there is an important choice to make regarding the nature of
the relevant feature of interest. Since `Result` ought to refer to a
feature, it must be translated into as many relational tables as many different
features of interest exist. Therefore corresponding result tables are necessary for
`surface`, `plot`, `profile`, `element` and `specimen`. 

Considering physio-chemical observations, in practice only `Element` and
`Specimen` yield observations of this nature, with numerical values as result.
For `element` the observation tables include the suffix `_phys_chem` whereas
for specimen it is `numerical_specimen`. If further features of interest come
to require numerical observations this suffix system must be harmonised.

The `observation` table is in essence a ternary association, with foreign keys
to `property`, `procedure` and `results`. In addition the columns `value_min`
and `value_max` provide an interval of admissible values to guarantee data
consistency (e.g. per mille). [Figure @fig:om:numerical] provides an overview
of the observation assets for the `element` entity.

The tables for `property`, `procedure` and `results` are thesauri, not meant
for direct modification by users. They provide the controlled content in this
segment of the data model. In all three tables the natural columns are a human
readable `label` and an `uri` to an entry in an on-line controlled vocabulary.
This configuration is specifically designed to align the data model with the
GloSIS web ontology (details in [Section @sec:thes]), but it also facilitates
referencing other on-line sources of controlled content. The `procedure` table
includes an additional foreign key to itself, for the encoding of hierarchical
procedures, with different levels of detail.

Closing this segment of the data model is the `result` table. It refers
both to an `observation` and a feature of interest (`element` for
`result_phys_chem` and `specimen` for `result_numeric_specimen`). A numeric
column named `value` hosts the actual measurement. To each numerical result
table a trigger is associated that on insertion or update verifies the value
against the `value_min` and `value_max` columns in the associated observation.
In case it is outside the admissible interval, an exception is raised and the
value remains unchanged.


![Entity-Relationship diagram for numerical observations on *element*.](diagrams/observation_num.png){#fig:om:numerical}

## Descriptive Observations

Various of the soil properties assessed during field work provide qualitative
or descriptive results from direct observation, dispensing laboratory analysis.
Examples are water drainage or soil classification. Results from these
observations are thus textual in nature, ideally in reference to controlled
content sources.

Compared to numerical observations, the main difference in the translation of
the O&M pattern to a relational model for descriptive observations is in the
nature of the result, it becomes a reference (foreign key) to a thesaurus. A
thesaurus provides a list of controlled terms or items, that as a rule may not
be modified by system users.  

All features of interest can be subject to descriptive observations. Therefore
the O&M pattern is replicated to each one, with a suffix to the table making the
distinction. An exception was opened to the procedures thesaurus. In this case a
procedure is a publication (field manual, soil description guidelines, etc) of
which few are expected and should apply equally to different features of
interest. [Figure @fig:om:descriptive] presents the tables for the descriptive
observations related to `Surface`, thus yielding the suffix `_surface`. Similar
tables exist for `plot`, `profile` and `element`.

A `property_desc` table provides the thesaurus for properties, just like in the
numerical observations case. `thesaurus_desc` provides the additional
controlled lists of descriptive terms to associate with properties.
`procedure_desc` hosts then the thesaurus of publications. The
`observation_desc` table relates these previous concepts in a ternary
relationship as before.

The `result_desc` table is simply composed by two references, one to the
feature of interest and another to the observation. The latter is actually a
composed foreign key with the primary keys of the property and the respective
item in the descriptive thesaurus. A joint unique constraint is applied on the
foreign keys to the feature of interest and the property, guaranteeing that
only one result is recorded for each property of each feature of interest.

![Entity-Relationship diagram for descriptive observations associated with the Surface feature of interest.](diagrams/observation_desc.png){#fig:om:descriptive}
