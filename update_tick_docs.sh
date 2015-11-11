#!/bin/bash

# To generate the tick docs we use a little utility similar
# to godoc called tickdoc. It organizes the fields and method
# of structs into property methods and chaining methods.

dest=$1 # output path for the .md files
docspath=${2-/docs/kapacitor/v0.1/tick}

if [ -z "$dest" ]
then
    echo "Usage: ./update_tick_docs.sh output_path [docspath]"
    exit 1
fi

tickdoc $docspath ./pipeline $dest


