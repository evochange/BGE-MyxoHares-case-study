${BOWTIE2} \
  -x myxoma_virus_index \
  -1 ${R1} -2 ${R2} |
  samtools sort -o ${SAMPLE}.virus.bam
