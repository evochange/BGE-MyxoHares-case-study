#!/usr/bin/env bash
source configs/config.sh

ls ${RESULTS_DIR}/bam/*.bam > bamlist.txt

${ANGSD} \
  -bam bamlist.txt \
  -ref ${REF_GENOME_MASKED} \
  -out ${RESULTS_DIR}/angsd/myxohares \
  -GL 2 \
  -doMajorMinor 1 \
  -doMaf 2 \
  -SNP_pval 1e-6 \
  -minMapQ 30 \
  -minQ 20 \
  -nThreads ${THREADS}
