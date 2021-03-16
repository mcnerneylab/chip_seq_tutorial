#!/bin/bash
### qsub file.name to run from anywhere

#PBS -N bwa_mem
#PBS -S /bin/bash
#PBS -l walltime=24:00:00
#PBS -l nodes=1:ppn=8
#PBS -l mem=64gb
#PBS -o /gpfs/data/mcnerney-lab/liuweihan/chip_seq/becker_lab/bwa/bwa_mem.out
#PBS -e /gpfs/data/mcnerney-lab/liuweihan/chip_seq/becker_lab/bwa/bwa_mem.err

date

module load gcc/6.2.0
module load bwa/0.7.17

cd /gpfs/data/mcnerney-lab/liuweihan/chip_seq/becker_lab/fastqs
destdir=/gpfs/data/mcnerney-lab/liuweihan/chip_seq/becker_lab/bwa/bwa_mem_output

for fname in *_R1_001.fastq.gz
do
    base=${fname%_R1_001*}
    echo $base
    bwa mem -t 8 /gpfs/data/mcnerney-lab/liuweihan/chip_seq/becker_lab/bwa/bwa_idx_output/mm10_bwa_idx \
    ${base}_R1_001.fastq.gz  ${base}_R2_001.fastq.gz > $destdir/${base}_R1_R2.sam
done
