#!/usr/bin/env bash

# auhtor: Jem Stach
# inputs: name of the file extracted from the archive (without the path)
# output: The appropriate rrnDNB file into data/raw/
# touch command used to update the time stamp on downloaded files

target=$1

#use sed command to find and replace the path (with nothing) to give just the file name
filename=`echo $target | sed "s/.*\///"`
#use sed to find and replace the filename (with nothing) to give the path
path=`echo $target | sed -E "s/(.*\/).*/\1/"`

wget -P "$path" -nc https://rrndb.umms.med.umich.edu/static/download/"$filename".zip
unzip -n -d "$path" "$target".zip

touch "$target"
