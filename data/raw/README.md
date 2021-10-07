# README


Obtained files from the [rrnDB](https://rrndb.umms.med.umich.edu/static/download/), version 5.7, released in 2021

We automated downloading and extracting the rrnDB with wget and unzip

```
wget --directory-prefix=data/raw/ --no-clobber https://rrndb.umms.med.umich.edu/static/download/rrnDB-5.7.tsv.zip
unzip -n -d data/raw/ data/raw/rrnDB-5.7.tsv.zip

wget -nc -P data/raw/ https://rrndb.umms.med.umich.edu/static/download/rrnDB-5.7_16S_rRNA.fasta.zip
unzip -n -d data/raw/ data/raw/rrnDB-5.7_16S_rRNA.fasta.zip

wget -nc -P data/raw/ https://rrndb.umms.med.umich.edu/static/download/rrnDB-5.7_pantaxa_stats_NCBI.tsv.zip
unzip -n -d data/raw/ data/raw/rrnDB-5.7_pantaxa_stats_NCBI.tsv.zip

wget -nc -P data/raw/ https://rrndb.umms.med.umich.edu/static/download/rrnDB-5.7_pantaxa_stats_RDP.tsv.zip
unzip -n -d data/raw/ data/raw/rrnDB-5.7_pantaxa_stats_RDP.tsv.zip
```
