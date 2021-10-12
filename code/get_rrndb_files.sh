#!/usr/bin/env bash

# auhtor: Jem Stach
# inputs: name of the file extracted from the archive (without the path)
# output: The appropriate rrnDNB file into data/raw/
# touch command used to update the time stamp on downloaded files

archive=$1


wget -P data/raw/ -nc https://rrndb.umms.med.umich.edu/static/download/"$archive".zip
unzip -n -d data/raw/ data/raw/"$archive".zip

touch data/raw/"$archive"
