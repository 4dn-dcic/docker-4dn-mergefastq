#!/bin/bash
outprefix=$1
shift

INFILESTR=${@}
INFILES=(${INFILESTR// / })
NFILES=${#INFILES[@]}

if [ $NFILES -eq 1 ]
then

  cp $1 $outprefix.fastq.gz

else

  cat ${INFILES[@]} > $outprefix.fastq.gz

fi
