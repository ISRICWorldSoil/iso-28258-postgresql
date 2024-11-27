---
title: Soil Classification Systems
author: Luís Moreira de Sousa luis[dot]de[dot]sousa[at]protonmail[dot]ch 
date: 2024-05-06
---

Concepts of Soil Ontology and Soil Information Systems
======================================================


Abstract 
--------

This draft document defines a domain of work concerning digital soil data
termed Soil Ontology. ISRIC has entailed various activities in this context,
particularly in its involvement with the OGC and the GSP. This document
outlines a number of concepts in an attempt to frame ISRIC's contributions into
a well defined domain.  

A succinct definition of ontology and soil ontology is provided. The role of
soil ontology in the soil data life-cycle is then briefly reviewed. Following a
collection of definitions relevant to the context of Soil Information Systems is provided. 

1	Ontology 
------------

Ontology is a branch of philosophy that developed at the onset of Classical
Greece. It concerns the study of existence, becoming and reality, encompassing
concepts such as “thing” (i.e. something that exists), “category”, systems of
categories and the classification of things. Ontology is reflected in modern
Logics, with the development of Set Theory and later Category Theory. In the
second half of the XX Century Category Theory had in its turn a major influence
in the development of Artificial Intelligence, namely in its sub-domain of
knowledge representation. 

Throughout the 1960s and 1970s various elements of Ontology were integrated in
Computer Science at large, with the development of the relational data-base
paradigm and object-oriented programming. In the 1990s Ontology was formally
integrated in modern Computer Science, as the Unified Modelling Language (UML)
and the Semantic Web coalesced. 

Currently in Computer Science (and Information Science) the term ontology (with
lower case “o”) is synonym with the formal representation of categories, their
properties and inter-relationships. An ontology is meant to enable and support
the collection, analysis, storage, provision and protection of information. It
structures data into knowledge and information, furnishing it with semantics
(i.e. meaning). In this context, ontology is usually applied to a specific
domain of knowledge. 

The concept of “Soil Ontology” thus signifies the formal representation of
information and knowledge in the Soil domain. It provides structure to the data
collected in soil surveys, that produced by laboratory analysis, and the
outputs of modelling and mapping procedures. Furthermore, Soil Ontology
provides the scope and the limits to the data produced and managed in these
activities, specifically through the definition of controlled content. Soil
Ontology is also the means for soil data exchange and harmonisation, as
recognised by the European Commission in its INSPIRE directive, or the Global
Soil Partnership in its Pillar 5 development plan. 

Whereas Soil Ontology is not always referenced in such terms, this appellation
is becoming common, as attested by the ESIP Soil Ontology and Informatics
cluster. This terminology is also emerging in peer-reviewed literature. The
terms “Agriculture Ontology” and “Agronomy Ontology” are already household
names in those domains, therefore a counterpart in Soil is more than likely to
consolidate. 

2	The role of Soil Ontology
-----------------------------

Soil Ontology is in essence involved in all phases of the soil data life-cycle.
The identification (or development) of an appropriate ontology is one of the
very first steps in any soil data process. Whereas this step may not be
formally identified as such, it takes place in any case, through actions such
as the specification of controlled content or the selection of target soil
properties. 

Soil surveying may be regarded in most cases as the initial phase in soil data
acquisition. This is perhaps the moment at which ontology is most critical, as
it largely determines the data collected in the field. The identification of
features of interest, their relationships, the properties to observe or
describe, all fall within the realm of soil ontology. Moreover, the controlled
content (e.g. code-lists) stipulated for soil description is also part of this
work. Adding to these are the meta-data identifying individuals, institutions
and other human constructs related to the survey. Applying the correct
ontologies in this phase, and in the correct way, is crucial, as it impacts all
subsequent phases of the soil data life-cycle. 

Soil ontology also plays a role in the collection and storage of physical soil
specimens. In this phase the meta-data aspect is again relevant, and the
relation of meta-data to other knowledge domains. Labelling and location
information must be thoroughly collected in this phase, in order to guarantee
their persistence and interoperability with other data and work-streams. 

The analysis of soil specimens, be it chemical, physical, spectral or other, is
also shaped by the soil ontologies at play. The selection of properties to
analyse and the documentation of the procedures to conduct those analyses, can
only be accurately captured with the systematic application of ontology
principles. This phase in the soil data life-cycle is perhaps where most is
left to do regarding soil ontology, be it by the lack of standardised
procedures or for the absence of thorough ontologies in specific domains, as in
the analysis of physical soil properties. That much is recognised in the GSP’s
Implementation Plan of Pillar 5. 

The correct identification of data sources, target soil properties and models
employed in modelling and mapping also benefits from the formalisation provided
by ontologies. Moreover, soil ontology supports the formal links to ontologies
in other domains, such as those issued by the OGC of the W3C for training data
and model description. 

Data provision is the phase in the soil data life-cycle at which ontology is
most visible. It makes the means by which soil data is understandable and
re-usable by users. In this context, soil ontology provides the **R** in the
**FAIR** data concept, plus the top two stars in the Five Star Open Data scheme.
Whereas much effort has been put on this role of soil ontology (ISO, OGC, GSP,
etc) it is important to acknowledge the role soil ontology has in all previous
phases of soil data collection and curation, at the risk of great cost in
harmonising/standardising data at such late phase. 

In parallel to data provision, soil ontology is at the core of the
interoperability necessary during the decision support phase in the soil data
life-cycle. With the emergence of precision agriculture, decision support
systems become ever more reliant on the integration of different data streams,
be it from field monitoring, agriculture machinery, remote vessels (e.g.
satellites), or specialised data services (where soil data tends to fit). A
relevant example in this phase is the Agriculture Information Model (AIM)
currently undergoing approval by the OGC. The semantics furnished by soil
ontology and the links to neighbouring ontologies is key to attain precise and
bespoke decision support. 


Glossary
--------

This section provides short definitions for a series of terms relevant in the context of Soil Information Systems.

### Ontology

Written with a capital "O", it refers to the branch of Meta-physics concerned
with concepts of **being**, **existing** and **reality**. Early documents on
Ontology date to the III century BC. Since the 1990s general conceptions from
Ontology have been applied in the Computer Sciences, particularly in
information and systems modelling. The Unified Modelling Language (UML), and
the Web Ontology Language (OWL) are some of the earliest results of the
introduction of Ontology to Computer Science. 

### ontology

An information **abstraction** resulting from the application of Ontology
principles to the information/computer science domain. Expressed with lower
case "o", an ontology is a domain model, usually not including behavioural
aspects.


### Domain Model

An abstraction synthesising the information (and in some cases behaviour) of a
specific domain. Often represented with a visual language like UML. A domain
model can also be referred as "ontology". It represents information through the
definition of **classes** (a set of things or elements that share one or more
traits) and the possible **relationships** between them.


### Data Model

A logical **structure** for the **storage** of a data (usually in a digital
system). In most cases a data model implements the informational aspect of a
domain model.  Since the 1970s relational databases have come to dominate as
logical data structures in the software industry. Therefore the term "data
model" often refers to the set of SQL (or similar language) instructions that
set up the tables, constraints and references in a database.


### Vocabulary

A set of abstract terms composing a knowledge domain. A vocabulary usually does
not exist physically. It makes the **common understanding** of a domain. In the
context of Soil Information, concepts such as "site", "soil profile", "soil
horizon" are generally understood in similar way by stakeholders and other
domain actors. They represent the shared understanding of the domain. The
concepts in a vocabulary are predominantly nuanced, with slight perceived
differences from person to person. The concept of "site" is a good example.

### Dictionary (Controlled Vocabulary)

A set of concrete definitions of terms in a domain. In contrast to a
Vocabulary, a Dictionary is a **tangible** asset, stored or shared at a concrete
location (e.g. a book or a section of a book, a web site or web page). In a
Dictionary terms are organised methodically to facilitate search. The concrete
location of a Dictionary in most cases implies some level of governance by an
**authority**.

In Programming the term dictionary has a very specific meaning: a collection of
key-value pairs.

```
dict = {'Name': 'Zara', 'Age': 7, 'Class': 'First'}
```

### Thesaurus

A **networked collection** of well-defined terms. A defining characteristic of a
thesaurus is the establishment of relations between its terms. Relations
established in a thesaurus include: 
- Parent-child
- Synonymity
- Antithesis/Antonym 
- Proximity

A thesaurus including only parent-child relations (e.g. a hierarchy) is also
named **Taxonomy**.

### Enumeration

A finite set of **simple**, **concrete** terms. Dispenses the formal definition of its
terms, each should be well understood, even outside the domain. In Computer
Science enumerations are used frequently to delimit the set of admissible
values of properties and variables. Examples of enumerations may be the days of
the week (Sunday, Monday, etc) or the values of boolean properties (True or
False).

### Code-list

A collection of terms that are **uniquely identified**, most commonly with a
**URI**. A code-list can refer to a Dictionary or a Thesaurus, but can also be
a simple enumeration. Code-lists can be used to delimit the scope of a domain
model. By its nature, code-lists also provide a template for their concrete
and formal extension.

The [GloSIS code-lists](http://vocabs.isric.org) derived from the FAO
Guidelines for Soil Description are the best example in this context.

### Code-list term

A **single item** in a code-list, including the following elements:
- Unique code/URI
- A label (multilingual)
- A definition (multilingual)
- Life span
- Relation to other terms

### Observations and Measurements (O&M) 

A standard approved by ISO and the OGC providing a domain model for information
captured with human instruments and methods on **natural phenomena**.

### Feature of Interest

A class in the Observations and Measurements domain model representing the
**subject** of an observation or measurement. I.e. what is meant to be observed.


### Semantic Web

Network of standards and specifications issued by the OGC for the digital
**exchange** of data over the internet. It includes the Unified Resource Identifier
(URI), the Resource Description Framework (RDF), the Web Ontology Language
(OWL), the SPARQL query language and much more. 

### Linked Data

A term coined by Tim Berners-Lee to encapsulate the expected impacts of the
Semantic Web on data provision. It is summarised in three basic principles:
 - Data are primarily represented by links.
 - Data relate in networks.
 - Data are readable by both humans and machines.

Linked Data can be seen as a broader concept than the Semantic Web, as it does
not depend on a particular standard (or set of standards). Linked Data may be
created with other standards following the same linking, readability and
networking principles.

### Linked Open Data

A more recent term emerged to further reinforce the original vision of Tim
Berners-Lee. Data can only be truly linked if they related to other networks of
data, and can easily be access/referenced by external networks and datasets.
Often associated with the full application of FAIR principles. 

