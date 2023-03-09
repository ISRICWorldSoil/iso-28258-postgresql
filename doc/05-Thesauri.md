Thesauri {#sec:thes}
====================

## GloSIS code-lists

One of the advancements GloSIS brings to soil ontology is the introduction of
comprehensive and structured code-lists. Making the best use of the Semantic Web,
these code-lists are structured according the Simple Knowledge Ontology
System (SKOS) [@miles2009skos] with each item fully de-referenceable. SKOS also
makes these code-lists easily extendable.

GloSIS currently comprises code-lists for three cases:

- **Descriptive property values**: as digitised from the FAO Guidelines for Soil
  Description during the consultancy work for Pillar 5 of GSP
[@SchleidtReznik2020]. Some 830 codes are currently found in these code-lists.

- **Physio-chemical properties**: in accordance to the Tier1/Tier2 inventory
  gathered within the Pillar 4 of GSP [@BatjesTier1-2], comprising 80 individual items. 

- **Physio-chemical procedures**: adapted from the large catalogue assembled
  within the Africa Soil Profiles project (AfSP) [@Leenaars2014], currently
totalling over 200 individuals.

Beyond these code-lists, the GloSIS ontology also embodies a large collection of
descriptive soil properties. However, these are not modelled as code-lists, but
rather as direct instances of the `Property` class from the SOSA ontology. Over
160 such properties currently exist in the ontology, across all features of
interest.

These collections of controlled content provide a wealth of information form
which to start a soil information system or an *ad hoc* database as the one
described in this document. The GloSIS ontology is currently hosted at the W3ID
service set-up by the W3C [^502], guaranteeing an important level of resilience.
Moreover, GloSIS remains in active development with accompanying tools that will
facilitate the involvement of soil scientists.

SoilIE attempted a similar approach to controlled content, also producing
code-lists with dereferenceble items. However, these are no longer on-line so
it is not possible to compare their implementation. 

## SPARQL transformations

A series of transformations were created to obtain relational database records
from the GloSIS ontology. They are coded as SPARQL queries and stored in the
`sparql` folder of the code repository [^503]. Each of these queries obtain as
output a set of SQL `INSERT` instructions that for each code-list item create a
counterpart record in the corresponding thesaurus in the database.  

The query in [Listing @lst:thes:desc:prof] populates the thesaurus for
descriptive properties associated with the `GL_Profile` class in GloSIS
(`Profile` in ISO 28258). First, it identifies the relevant observations, those
whose feature of interest is the `Gl_Profile` class (with the
`sosa:hasFeatureOfInterest` predicate). Secondly, it identifies the associated
properties with the `sosa:observedProperty` element. It then identifies the
associated result and corresponding values code-list (`sosa:hasResult`). Using
the `BIND` function the resulting SQL `INSERT` instruction is produced as a
string. Similar SPARQL queries were developed for all other features of
interest.


```{#lst:thes:desc:prof .sparql caption="SPARQL query transforming descriptive observations for the `GL_Profile` class into SQL `INSERT` instructions."}
PREFIX rdfs:  <http://www.w3.org/2000/01/rdf-schema#>
PREFIX owl:   <http://www.w3.org/2002/07/owl#>
PREFIX sosa:  <http://www.w3.org/ns/sosa/>
PREFIX skos:  <http://www.w3.org/2004/02/skos/core#> 
PREFIX glosis_su:  <http://w3id.org/glosis/model/v1.0.0/profile#>

SELECT ?query
WHERE {
    ?obs rdfs:subClassOf sosa:Observation .
    ?obs rdfs:subClassOf ?rest_f .
    ?obs rdfs:subClassOf ?rest_p .
    ?obs rdfs:subClassOf ?rest_r .
    ?rest_f owl:onProperty sosa:hasFeatureOfInterest .
    ?rest_f owl:allValuesFrom glosis_su:GL_Profile .
    ?rest_p owl:onProperty sosa:observedProperty . 
    ?rest_p owl:hasValue ?prop .
    ?rest_r owl:onProperty sosa:hasResult .
    ?rest_r owl:someValuesFrom ?code_list .
    ?value a ?code_list .
    ?value skos:prefLabel ?l .
    BIND (CONCAT("INSERT INTO core.observation_desc_profile (property_desc_profile_id, thesaurus_desc_profile_id) VALUES ((SELECT property_desc_profile_id FROM core.property_desc_profile WHERE uri LIKE \'", 
                   ?prop, 
                   "\'), (SELECT thesaurus_desc_profile_id FROM core.thesaurus_desc_profile WHERE uri LIKE \'", 
                   ?value, 
                   "\'));") AS ?query)
}
```

Similar queries are used to obtain the `INSERT` instructions for the code-list
values themselves, that populate the thesauri. In [Listing
@lst:thes:desc:prof:cl] is again the case for the Profile feature of interest.
The matching triples in the `WHERE` clause are essentially the same as in [Listing
@lst:thes:desc:prof].


```{#lst:thes:desc:prof:cl .sparql caption="SPARQL query transforming code-lists of descriptive observations values for the `GL_Profile` class into SQL `INSERT` instructions."}
PREFIX rdfs:  <http://www.w3.org/2000/01/rdf-schema#>
PREFIX owl:   <http://www.w3.org/2002/07/owl#>
PREFIX sosa:  <http://www.w3.org/ns/sosa/>
PREFIX skos:  <http://www.w3.org/2004/02/skos/core#> 
PREFIX glosis_pr:  <http://w3id.org/glosis/model/v1.0.0/profile#>

SELECT ?query
WHERE {
    ?obs rdfs:subClassOf sosa:Observation .
    ?obs rdfs:subClassOf ?rest_f .
    ?obs rdfs:subClassOf ?rest_r .
    ?rest_f owl:onProperty sosa:hasFeatureOfInterest .
    ?rest_f owl:allValuesFrom glosis_pr:GL_Profile .
    ?rest_r owl:onProperty sosa:hasResult .
    ?rest_r owl:someValuesFrom ?code_list .
    ?value a ?code_list .
    ?value skos:prefLabel ?l .
    BIND (CONCAT('INSERT INTO core.thesaurus_desc_profile (label, uri) VALUES (\'', ?l,
          '\', \'', ?value, '\');') AS ?query)
}
```

Obtaining the physio-chemical properties for the profile element is a more
straightforward operation ([Listing @lst:thes:pc:prop]). The parent observation class
`glosis_lh:PhysioChemical` is used to identify all the properties linked by this
kind of observation, then retrieving the human readable strings to include in
the thesauri.


```{#lst:thes:pc:prop .sparql caption="SPARQL query transforming physio-chemical properties into SQL `INSERT` instructions."}
PREFIX rdfs:  <http://www.w3.org/2000/01/rdf-schema#>
PREFIX owl:   <http://www.w3.org/2002/07/owl#>
PREFIX sosa:  <http://www.w3.org/ns/sosa/>
PREFIX skos:  <http://www.w3.org/2004/02/skos/core#> 
PREFIX glosis_lh:  <http://w3id.org/glosis/model/v1.0.0/layerhorizon#>

SELECT DISTINCT ?query
WHERE {
    ?obs rdfs:subClassOf  glosis_lh:PhysioChemical .
    ?obs rdfs:subClassOf ?rest_p .
    ?rest_p owl:onProperty sosa:observedProperty .
    ?rest_p owl:hasValue ?prop .
    ?prop skos:prefLabel ?label
    BIND (CONCAT('INSERT INTO core.property_phys_chem (label, uri) VALUES (\'', ?label,
          '\', \'', ?prop, '\');') AS ?query)
}
```

The procedures thesaurus is the simplest to obtain, since all relevant items are
instances of the SOSA class `Procedure` ([Listing @lst:thes:pc:proc]). However,
in this case the can code-list is hierarchical and thus the SKOS predicate
`broader` must be taken into account. Using the `OPTIONAL` function, the query
generates an inner SQL `SELECT` query to identify the parent of each procedure,
in case it exists.  

```{#lst:thes:pc:proc .sparql caption="SPARQL query transforming physio-chemical analysis procedures into SQL `INSERT` instructions."}
PREFIX owl:   <http://www.w3.org/2002/07/owl#>
PREFIX sosa:  <http://www.w3.org/ns/sosa/>
PREFIX skos:  <http://www.w3.org/2004/02/skos/core#>
PREFIX glosis_proc: <http://w3id.org/glosis/model/v1.0.0/procedure#>

SELECT ?query
WHERE {
    ?parent a sosa:Procedure .
    ?uri a ?parent .
    ?uri skos:prefLabel ?label .    
    OPTIONAL {?uri skos:broader ?broader} .
    BIND (CONCAT('INSERT INTO core.procedure_phys_chem (uri, label, broader_id) VALUES (\'', ?uri,
         '\', \'', ?label, '\', (SELECT procedure_phys_chem_id FROM core.procedure_phys_chem WHERE uri LIKE \'', 
         ?broader ,'\')  );') AS ?query)
}
```



[^502]: https://w3id.org/glosis/model

[^503]: https://git.wur.nl/isric/databases/iso28258/-/tree/master/sparql
