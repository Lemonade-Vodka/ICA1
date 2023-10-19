for pair in `ls ~/ICA1/fastq_cut2 |cut -d '_' -f1,2 | uniq`
do
 bowtie2 -x ~/ICA1/index/index -1 ~/ICA1/fastq_cut2/$pair'_1.fq' -2 ~/ICA1/fastq_cut2/$pair'_2.fq' -S ~/ICA1/bt2_output/$pair'.sam'
done
