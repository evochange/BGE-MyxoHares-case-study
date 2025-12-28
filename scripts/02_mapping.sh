#!/usr/bin/env bash
source configs/config.sh

mkdir -p ${RESULTS_DIR}/bam

while read SAMPLE POP STATUS R1 R2; do
  ${BWA} mem -t ${THREADS} ${REF_GENOME} ${R1} ${R2} |
    ${SAMTOOLS} sort -@ ${THREADS} -o ${RESULTS_DIR}/bam/${SAMPLE}.bam
  ${SAMTOOLS} index ${RESULTS_DIR}/bam/${SAMPLE}.bam
done < configs/samples.tsv
