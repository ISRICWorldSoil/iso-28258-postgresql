Meta-data {#sec:meta}
=====================

Requirements
------------

O&M does not consider meta-data directly, an aspect that is beyond the scope of
the ontology. However, ISRIC identified the need to register individuals
responsible for certain laboratory measurements and field observations. This
information can be critical to keep track of laboratory work. Also regarding
field work, this information can be crucial to trace irregularities and obtain
clarification from the institutions involved. 

vCard, the meta-data ontology specified by the W3C [@iannella2014vcard] and the
ISO 19115 standard for geo-spatial meta-data [@ISO-19115] were initially
considered as semantic sources.  The Dublin Core vocabulary
[@baker2005maintaining] was also taken into consideration. vCard came to be the
main source as it matched closer the organisational information commonly related
to soil surveys.

Data model
----------

### Overview

The current data model is primarily based on the vCard classes `Organisation`,
`Individual` and `Address` with respective tables for each ([Figure
@fig:meta:er]). An organisation is typically a set of individuals that work
together towards a same goal (or set of goals), but its meaning can be taken
more broadly depending on the context. In most countries organisations are legal
entities.  Semantically the relevance is in distinguishing the collective from
an individual. Organisations have a name and can be contacted through an e-mail
address or a telephone number. They also may have a URL locating them in the
digital space. Organisations can be set up in a hierarchical fashion, through a
parent-child relationship. Organisations can also be sub-divided in various
units (`organisation_unit` table).

The individual is a person, usually subject to a set of legal rights and
obligations. The individual has a name and honorific title and can be contacted
by e-mail or telephone. An individual can also have a URL to a web page of
interest. Individuals can be part of an indefinite number of organisations
(through the `organisation_individual` table). They may instead relate directly
to a particular unit inside an organisation.

The `address` table provides structure for physical postal addresses of
individuals and organisations. Currently the relations to this table are
one-to-many, allowing for various individuals to have the same address. This is
a somewhat permissive structure, following the open nature of vCard, that may be
made more restrictive if necessary.

![Entity-Relationship diagram for the meta-data tables.](diagrams/meta-data.png){#fig:meta:er}


### Encapsulation

The entities created for the meta-data model are stored in their own database
schema, named `metadata`. This limits the number of tables in the main schema
(named `core`) facilitating human interaction with the database and its
documentation. Foreign keys from the `core` schema to the `metadata` schema
provide the appropriate relations between the two.

Not all database management systems (DBMS) implement the concept of schema laid
out in the SQL standard. Some include the concept but do not provided standard
interaction. Therefore this option for encapsulating the meta-data entities in
their own schema limits the range of DBMS that can host this database.


Relations with ISO 28258 entities
-------------------------

With a meta-data data model established, relations with the ISO 28258 entities
were devised, reflecting expectations on the field work conducted within
Soils4Africa and similar projects. These relations identify the organisations
and individuals responsible for data collection and/or asset storage. A simple
matrix of relations was developed to aid discussion with domain experts ([Table
@tbl:meta:relations]).

|          | Individual  | Organisation |
|----------|-------------|--------------|  
| Project  | None        | One or more  | 
| Plot     | One or more | None         |
| Surface  | One or more | None         |
| Profile  | None        | None         |
| Element  | None        | None         |
| Specimen | None        | One          |
| Results (Physio-Chemical)  | One      | None            |  

: Relationships between meta-data and ISO 28258 entities. {#tbl:meta:relations}

A project may involve one or more organisations responsible for conducting a
survey, or any other kind of soil investigation, including one or more plots.
Each plot is surveyed by one or more individuals that in principle must be
present at location. This resulted in the tables `project_organisation`,
`plot_individual` and `surface_individual`. The individuals associated with a
plot are also responsible for all descriptive results gathered on the profiles
and profile elements surveyed within the plot.

Neither elements nor profiles refer to individuals or organisations. These
entities are part of the investigation conducted on the plot and therefore
associated to the respective individual. However, the specimens surveyors
collect are sent to a storage facility hosted by an organisation that must be
identified.  It is also necessary to track individuals responsible for
physio-chemical measurements conducted in laboratories. Hence a direct reference
from this kind of result to the `individual` table.   




 
