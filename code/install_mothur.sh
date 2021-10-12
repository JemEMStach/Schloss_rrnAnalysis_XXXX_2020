#!/usr/bin/env bash

# author: Jem Stach
# inputs: none
# outputs: mothur installed in code/mothur

#the zip archive contains a directory called "mothur" so we can extract it directly to code/

wget -P code/mothur/ -nc https://github.com/mothur/mothur/releases/download/v1.46.1/Mothur.OSX-10.14.zip
unzip -n -d code/ code/mothur/Mothur.OSX-10.14.zip
