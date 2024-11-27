### Copyright {.unnumbered}

Copyright (C) 2022-2023 ISRIC - World Soil Information

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the “Software”), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

You should have received a copy of the MIT Licence along with this program.  If
not, see <[https://mit-license.org/](https://mit-license.org/)>.

### Recommended citation 

de Sousa, L. M., Calisto, L., van Genuchten P., Turdukulov, U., Kempen, B., 2023. Data model for the ISO 28258 domain model. ISRIC World Soil Information. Available at: [https://iso28258.isric.org/](https://iso28258.isric.org/)


Introduction {#sec:intro} 
============

## Motivation

In late 2021 a requirement emerged in the Soils4Africa project for a relational
database model directed at the storage of soil properties observations.  At
first, the data model of the World Soil Information Service (WoSIS) was
considered.  However, this path presented an insurmountable challenge from the
onset, as the WoSIS data model was developed *ad hoc*, unrelated to the
state-of-the-art in soil ontology. In addition, this data model does not
always follows best practices in SQL and relational database modelling. Among
the issues with the WoSIS data model, the following can be highlighted:

- absence of thesauri or other mechanisms for controlled content;
- data type mismatches, e.g. numerical values stored in text fields;
- functional dependencies (marked with the concept of "attribute");
- unclear semantics (in the data model and documentation).

While not the most severe issue, the lack of controlled thesauri renders the
WoSIS data model nearly unusable outside the context for which it was
developed. The other issues carry risks for maintenance and data accuracy that
can easily become too expensive to address.

## The option for an international standard

A second path was thus considered, developing a more general data model
following the state-of-the-art in soil ontology. Several models have been
proposed as basis for the exchange of soil data that offer a starting point for
a data model. No thorough comparison was undertaken between the different
options, the domain model proposed in the ISO 28258 standard was adopted
outright for a first prototype. ISO 28258 is the only truly international
standard directed at soil data exchange, with the alternatives being primarily
regional in nature (e.g. INSPIRE, ANZSoilML). Soils4Africa taking place in a
different continent, and with the goal of a generic data model in mind, the
international model was the default choice. Further details on how these
different models compare are offered in [Section @sec:28258:relation]. 

The ISO 28258 domain model provides a "shell" architecture meant to be
specialised for particular contexts. Initial data model prototyping proved that
to be the case. Moreover, the parenthood of ISO 28258 to the GloSIS web ontology
also facilitated the use of controlled content referenceable on the web.


## Structure

This document is structured as follows. [Section @sec:28258] briefly presents
the ISO 28258 standard and the domain model it proposes, also comparing with
other relevant models in soil ontology. The features of interest included in the
data model are introduced next, in [Section @sec:foi], after which the
observations and measurements assets are presented in [Section @sec:om].
[Section @sec:thes] details the procedures employed to populate the thesauri and
their intended use.  Meta-data is addressed in [Section @sec:meta]. Some
relevant operational aspects of the data model are discussed in [Section
@sec:oper]. The document concludes by pointing directions for future work in
[Section @sec:future].

## Format 

This document is encoded with the Markdown language, meant to be compiled with
the Pandoc system [^4]. It is maintained within the `iso28258` repository itself
[^3].


## Glossary

- **Data model**: a logical structure for the storage of a data (usually in a
  digital system). In most cases a data model implements the informational
  aspect of a domain model. In this document relations in a data model are
  represented with lower case e.g., `element`.
- **Domain Model**: an abstraction synthesising the information (and in
  some cases behaviour) of a specific domain. Often represented with a visual
  language like UML. A domain model can also be referred as "ontology". In this
  document classes or concepts in a domain model are represented with capital
  characters, e.g. `SoilElement`. 
- **Feature of Interest**: a class in the Observations and Measurements domain
  model representing the subject of an observation or measurement. I.e. what is
  meant to be observed.
- **Observations and Measurements (O&M)**: a standard sanctioned by ISO and the
  OGC providing a domain model for information captured with human instruments
  and methods on natural phenomena.
- **ontology**: an information abstraction resulting from the application of
  Ontology principles to the information/computer science domain. Expressed
  with lower case "o", an ontology is a domain model, usually not including behavioural
  aspects.
- **Semantic Web**: network of standard and specifications issue by the OGC for
  the digital exchange of data over the internet. It includes the Unified
  Resource Identifier (URI), the Resource
  Description Framework (RDF), the Web Ontology Language (OWL), the SPARQL
  query language and much more. 
- **Thesaurus**: a controlled set of terms that may be associated to a specific
  class property or table column. E.g. the set (*red*, *green*, *blue*) would be a
  thesaurus for the *colour* property. The concept of thesaurus is close to
  those of code-lists and vocabulary.


[^3]: https://git.wur.nl/isric/databases/iso28258/-/tree/master/doc

[^4]: https://pandoc.org/ 
