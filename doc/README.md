Documentation for the ISO 28258
===============================

This folder gathers the files documenting the data model for the ISO 28358
standard developed at ISRIC. From this folder it is possible to produce a full
report, either as an HTML page or a PDF document.


Requeriments
------------

To compile the report the following assets are necessary:

- [**Pandoc**](https://pandoc.org/): text processor and converter.

- [**Easy Pandoc
  Templates**](https://github.com/ryangrose/easy-pandoc-templates): HTML
  templates for Pandoc.

- [**Mermaid**](https://mermaid.js.org/): diagram and chart tool.


Compile
-------

The script `compile.sh` builds the complete document from the set of Markdown
files. To obtain the HTML run the command below, it copies the result into the
`../public` folder.

```
./compile.sh html
```

The source files of the different images is in the `diagrams` folder. If one is
modified, it must be recompiled and copied into the `../public` folder, like the
commands below show.

```
mmdc -i diagrams/iso-28258.mm -o diagrams/iso-28258.png

mv diagrams/iso-28258.png ../public/diagrams/
```

Deployment
----------

Currently this document is meant to be deployed with the [GitLab Pages]()
feature.  The resulting contents are gathered in [../public](../public) folder.
The file [../.gitlab-ci.yml](../.gitlab-ci.yml) contains the CI settings. This
is currently a default, as the document is meant to be served as plain HTML. 

GitLab provides an example [static HTML
project](https://gitlab.com/pages/plain-html) with a full example.
