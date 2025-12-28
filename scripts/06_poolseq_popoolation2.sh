samtools mpileup -B -f ${REF_GENOME_MASKED} \
  ${RESULTS_DIR}/bam/*.bam > all.mpileup

java -jar popoolation2_1201/mpileup2sync.jar \
  --input all.mpileup \
  --output all.sync \
  --fastq-type sanger
