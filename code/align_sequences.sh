#!/usr/bin/env bash

# author: Jem Stach
# inputs: data/raw/rrnDB-5.7_16S_rRNA.fasta
#          data/references/silva_seed/silva.seed_v138_1.align
# outputs: data/raw/rrnDB-5.7_16S_rRNA.align
#
#We neet to include f;ip=T to make sure all sequences are pointed in the same direction

code/mothur/mothur '#align.seqs(fasta=data/raw/rrnDB-5.7_16S_rRNA.fasta, reference=data/references/silva_seed/silva.seed_v138_1.align, flip=T)'
