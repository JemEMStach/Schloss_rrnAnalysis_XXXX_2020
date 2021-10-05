Obtained files from the rrnDB located at 
https://rrndb.umms.med.umich.edu/static/download/

These are files from version 5.7, released in 2021

We automated downloading and extracting the tsv with wget
wget --directory-prefix=data/raw/ --no-clobber https://rrndb.umms.med.umich.edu/static/download/rrnDB-5.7.tsv.zip
unzip -n -d data/raw/ data/raw/rrnDB-5.7.tsv.zip

wget -nc -P data/raw/ https://rrndb.umms.med.umich.edu/static/download/rrnDB-5.7_16S_rRNA.fasta.zip
unzip -n -d data/raw/ data/raw/rrnDB-5.7_16S_rRNA.fasta.zip

wget -nc -P data/raw/ https://rrndb.umms.med.umich.edu/static/download/rrnDB-5.7_pantaxa_stats_NCBI.tsv.zip
unzip -n -d data/raw/ data/raw/rrnDB-5.7_pantaxa_stats_NCBI.tsv.zip 

wget -nc -P data/raw/ https://rrndb.umms.med.umich.edu/static/download/rrnDB-5.7_pantaxa_stats_RDP.tsv.zip
unzip -n -d data/raw/ data/raw/rrnDB-5.7_pantaxa_stats_RDP.tsv.zip
