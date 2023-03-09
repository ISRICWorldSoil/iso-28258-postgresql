Features of Interest {#sec:foi}
===============================

## General

The ISO 28258 domain model was translated into a relational data model in the
most seamless way possible. Whenever practical, classes and their attributes
were translated directly into relations and attributes (or tables and columns).
Generalisations were dealt with case-by-case, applying the child relations
rules, i.e. creating individual entities for the children only if they bear
diverse relations with other classes. This section reviews the entities and
relationships implementing the features of interest (FoIs) and related assets. 

## Project and Site

The first concept to introduce is that of `Project`, a general placeholder
providing the context of the data collection activity. The ISO domain model
considers this a prerequisite for the proper use or reuse of these data. Within a
project one or more soil investigations take place. It can be a soil sampling
campaign, a regular soil survey, or some other organised process of soil data
collection. The table `project` contains a single field for the project name,
exposing the open nature of this concept ([Figure @fig:foi:project]). 

A project can be related to one or more other projects. For instance, if a
certain field campaign occurs at regular time intervals, the user might wish to
record each as a single project, but related to others undertaken at a
different time. Hierarchical relations can also be recorded this way, expressing a
certain project as sub-project of another one. The table `project_related`
provides the `role` field in which the user may express the nature of the
relationship.

A soil investigation takes place within a certain spatial area or extent: the
`Site`. A site is not a spatial feature of interest, but provides the link
between the spatial features of interest (`Plot`) to the `Project`. It can be
expressed either as a location (point) or spatial extent (polygon). The fields
`position` and `extent` in the `site` table provide for this information, being
that only one may be non empty for each record.

![Entity-Relationship diagram for the `project` and `site` entities.](diagrams/project-site.png){#fig:foi:project}


## Spatial Features

All features of interest in the ISO 28258 model relate to a site, directly or
indirectly. It is not possible to express information without previously
defining the spatial extent within which the soil investigation took place. A
single site may host more than one investigation, thus assumed to have an
heterogeneous soil composition.

The soil investigation itself is conducted in a precise spatial location - the
`Plot` - the first spatial feature of interest. The `Plot` can be of three
different kinds: `Surface`, `Pit` or `Borehole`. The `Surface` corresponds
spatially to a polygonal feature, a spatial extent within which the character
of the soil tends
to be homogeneous. `Surface` can express soil investigations recorded with high
positional inaccuracy. The model also defines a hierarchical relation between
surfaces.

Both the `Borehole` and the `Pit` correspond to point type spatial features,
translating locations recorded with good positional accuracy. A borehole
represents soil investigations conducted with an auger or similar boring
instrument, whereas a pit indicates a soil excavation activity. In practice,
both `Borehole` and `Pit` yield the same properties and relations,
undistinguishable as data structures.

The `Plot` was thus modelled with two tables: one for the `Surface` and another -
named `plot` - for `Borehole` and `Pit`. Both of these have a mandatory relation to
a site. The `plot` table has a `Point` type column as spatial feature and
`surface` a `Polygon` type column. As [Figure @fig:foi:profile] shows, the `plot` table contains a
different set of columns.

The `plot` and `surface` tables provide the spatial hook on which to record a soil
`Profile` (a vertical sequence of soil horizons). The resulting `profile` table
is rather simple, yielding a `code` column and two foreign keys, one for `plot`
and another for `surface`. A `CHECK` constraint forces one, and only one of
these two foreign keys to be used simultaneously.

Note the nature of the relation between `Plot` and `Profile` being one-to-many.
Meaning that more than one profile can be associated with the same plot (of
whatever kind). This kind of association is not meant to related profiles
collected at different points in time to a same plot. In such case the two
profiles would be in different projects and would thus relate to different plots. 

![Entity-Relationship diagram for the `profile` and `plot` entities.](diagrams/profile-plot.png){#fig:foi:profile}


## Other Features of Interest

There are three further features that do not have spatial expression but still
are passible or measurement. Two are the profile elements: `Layer` and `Horizon`,
the third being the `SoilSpecimen`. 

`Layer` and `Horizon` present a similar nature: a section of the soil profile
starting and ending at defined depths. Each instance is recorded in a
particular order, re-creating the full soil profile. Semantically, `Layer` and
`Horizon` differ in their composition, the latter is homogeneous, the former
heterogeneous. An horizon is identified by field observation, through sharp
transitions of colour, composition or texture. Layer depths are usually
pre-determined prior to field work. However, this difference does not translate
into different properties or relations in the data model. Therefore, both `Layer`
and `Horizon` are captured in a single table: `element`. The field `type` provides
the means to distinguish between layer or horizon, if needed be. [Figure @fig:foi:element]
provides an overview of these relations.

The simultaneous inclusion of the properties `upper_depth`, `lower_depth` and
`order` rapports important redundancies that are worth noting. The depth fields
are recorded as positive integers representing centimetres from the surface,
increasing downwards. The data model forces `upper_depth` to be lower than
`lower_depth`. However the model cannot prevent overlapping profile elements
from being recorded. Likewise, it cannot guarantee consistency between `order`
and the depth columns. These redundancies are translated from the domain model
"as is" since they portray common practice in soil survey. For these issues to be fully
addressed a business rules layer is necessary (e.g. with database stored
procedures).

The concept of `SoilSpecimen` in ISO 28258 is derived from the ISO 10381
standard for Soil Sampling [@iso10381]. In essence it is a portion of soil
matter (implicitly assumed as homogeneous) collected at a certain depth, meant
to be transported to a storage facility where it may be further prepared and
analysed with different methods. It does not appear directly associated to any
specific feature in the ISO 28258 domain model, but its parent structure in ISO
10381 indicates possible associations with spatial features that may function
as sampling platforms. The WoSIS database includes a similar concept, `sample`
that appears associated with a site or plot. The same approach was thus taken
in the ISO 28258 data model with a one-to-many association  between `plot` and
`specimen`.  An additional table, `specimen_prep_process`, provides essential
attributes to record how a sample is transported and stored.

![Entity-Relationship diagram for the `element` and `specimen`
entities.](diagrams/element-specimen.png){#fig:foi:element}

