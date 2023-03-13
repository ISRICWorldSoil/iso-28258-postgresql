#!/bin/bash

files="title.txt \
       01-Intro.md \
       02-ISO-28258.md \
       03-FoIs.md \
       04-OnM.md \
       05-Thesauri.md \
       06-Meta-data.md \
       08-Operational.md \
       09-Future.md \
       10-Ack.md \
       11-Biblio.md "

options="pandoc \
         --filter pandoc-crossref \
         --number-sections \
         --toc \
         --bibliography=Biblio.bib --citeproc "

if [[ $1 == "pdf" ]];
then
      ${options} \
      -M date="`date "+%B%e, %Y"`" \
      -o DataModelISO.pdf \
      ${files}

elif [[ $1 == "html" ]]
then
      ${options} \
      -M date="`date "+%B%e, %Y"`" \
      --bibliography=Biblio.bib --citeproc \
      --template=easy_template.html \
      -o ../public/index.html \
      ${files}

else
    echo "Unrecognised parameters. Available options are: 'pdf' and 'html'."
fi


