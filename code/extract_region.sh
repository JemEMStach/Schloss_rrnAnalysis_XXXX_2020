#!/usr/bin/env bash

# auhtor: Jem Stach
# dependency: data/raw/rrnDB-5.7_16S_rRNA.align
# input: target name (really the output)
#        data/<region>/rrnDB.align
#
#

target=$1
region=`echo "$target" | sed -E "s/.*\/(.*)\/.*/\1/"`
path=`echo "$target" | sed -E "s/(.*\/.*)\/.*/\1/"`

if [[ "$region" = "v19" ]]
then
  start=1044
  end=43116
  echo "region: $region"
elif [[ "$region" = "v4" ]]
then
  start=13862
  end=23444
  echo "region: $region"
elif [[ "$region" = "v34" ]]
then
  start=6428
  end=23444
  echo "region: $region"
elif [[ "$region" = "v45" ]]
then
  start=13862
  end=27659
  echo "region: $region"
else
  echo "FAIL: we don't have the coordinates for $region"
  exit 1
fi

echo "start: $start"
echo "end: $end"

mkdir -p $path

code/mothur/mothur "#pcr.seqs(fasta=data/raw/rrnDB-5.7_16S_rRNA.align, start=$start,
end=$end, outputdir=$path); filter.seqs(vertical=TRUE)"

# if mothir ran successfully, then touch the files that might not have been generated
# in pcr.seqs because the sequences span the desired region'd coordinates
if [[ $? -eq 0 ]]
then
  touch $path/rrnDB-5.7_16S_rRNA.bad.accnos
  touch $path/rrnDB-5.7_16S_rRNA.bad.accnos $path/rrnDB.bad.accnos
else
  echo "FAIL: mothur ran into a problem"
  exit 1
fi

# clean up file names
mv $path/rrnDB-5.7_16S_rRNA.pcr.filter.fasta $target
mv $path/rrnDB-5.7_16S_rRNA.bad.accnos $path/rrnDB.bad.accnos

# garbage collection
rm $path/rrnDB-5.7_16S_rRNA.pcr.align
rm $path/rrnDB-5.7_16S_rRNA.scrap.pcr.align
rm $path/rrnDB-5.filter
