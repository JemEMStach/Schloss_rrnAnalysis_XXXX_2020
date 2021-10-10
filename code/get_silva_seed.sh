#!/usr/bin/env bash

# author: Jem Stach
# inputs: none
# outputs: places SILVA seed alignment inot data/references/silva_seed
#
# Download this version of the SILVA reference to help with aligning mothur
# sequence data. This is version 138, released in 2020. Becuase tje tgz file
# contains a README file, we extracted to a directory within data/references/

wget -nc -P data/references/ https://mothur.s3.us-east-2.amazonaws.com/wiki/silva.seed_v138_1.tgz

mkdir data/references/silva_seed

tar xvzf data/references/silva.seed_v138_1.tgz -C data/references/silva_seed/
