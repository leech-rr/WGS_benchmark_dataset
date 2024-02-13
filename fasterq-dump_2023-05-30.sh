#!/bin/bash
# last update: 20230601
# 
# $1: list of strain
# $2: The Number of threads

CMDNAME=`basename $0`

# parameter check
if [ "$#" -lt 1 ]; then
  echo "Usage: bash $CMDNAME final_snp.fas 1000 [24]"
  echo '  $1  List of Strain'
  echo '  $2  The Number of Threads ( 8 by default )'
  exit 1
fi

if [ -z $2 ]; then
	THREADS=8
else
	THREADS=$2
fi

#dependencies

#sra-tools
#install via conda
#conda install -c bioconda sra-tools
#in using under proxy environment, you need to configure the proxy setting (https://github.com/ncbi/sra-tools/wiki/03.-Quick-Toolkit-Configuration)
#configuration can be started by "vdb-config -i"

#pigz

#rename
#sudo apt install rename

# assign value
LIST=$1

echo $THREADS
for strain in `cat $LIST`; do
  echo $strain
  fasterq-dump ${strain} -e $THREADS -p -3
done

pigz *fastq
#simple format
rename "s/_1.fastq.gz/_R1.fastq.gz/" *_1.fastq.gz
rename "s/_2.fastq.gz/_R2.fastq.gz/" *_2.fastq.gz

#MiSeq format
#rename "s/_1.fastq.gz/_S00_L001_R1_001.fastq.gz/" *_1.fastq.gz
#rename "s/_2.fastq.gz/_S00_L001_R2_001.fastq.gz/" *_2.fastq.gz