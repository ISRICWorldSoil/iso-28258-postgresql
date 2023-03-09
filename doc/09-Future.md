Future work {#sec:future}
=========================

## Uncertainties

The estimation and recording of measurement uncertainties has been a topic of
active research at ISRIC. However, this aspect has so far been left outside 
soil ontology initiatives. The absence of uncertainty elements in O&M itself
is a contributing factor to this state of affairs.

Measurement uncertainty is likely associated with the procedures employed.
Particularly those used in the laboratory, but so too in field observations.
Beyond those, spectral models also carry intrinsic estimate uncertainties that
can be relevant to store.

In the data model, uncertainties are expected to be primarily associated with
entities implementing Procedure-type classes of O&M. However, other aspects may
also warrant this kind of information. Positioning uncertainty is an example.
Results themselves may be subject to uncertainties too, for instance to convey
particular conditions to field work. This area of soil ontology likely requires
further refinement in requirements before it can be introduced to the data
model.

## Maintaining the downstream synchronicity to ISO 28258

Once a downstream data model starts being used effectively, storing actual
results records, the integration procedure with the parent ISO data model,
described in [Section @sec:oper:integr], becomes less evident. Some
modifications may be straightforward to apply in the same fashion, e.g. adding a
new, nullable column to an existing table. But others may imply modifications to
existing records, that do not fit within the existing procedure.

Two approaches are possible to this issue. First is to devise an additional
strategy to apply changes from the parent model without loss or corruption of
data. This likely requires an additional backup and restore mechanism. The other
approach is to simply let the two data models diverge.  While not optimal, this
latter approach is by far the cheapest, and if the parent model is not expected
to evolve much further, it might not have much consequence.





