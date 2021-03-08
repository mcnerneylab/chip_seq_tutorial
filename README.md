# chip_seq_tutorial


## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [FastQC](#fastqc)
* [optional: joining fastqs in batch](#joinfastqs)
* [bwa alignment](#bwa alignment)

## General info
This is a demonstration workflow of how to analyze ChIP seq data, the data set we used are
	
## Technologies
Project is created with:
* fastqcr(R package)
* bwa/0.7.17
* samtools/1.9

## FastQC
Please see **fastQC.Rmd.**
We use the fastqc R package to perform QC on every single raw fastq file and aggregate the report into a table.

## optional: joining fastqs in batch
Please see **batch_join_fastqs**
Use this script to join fastqs if they are from different sequencing lanes

## bwa alignment
Because Chip seq requires a simple alignment process to just obtain read count, we don't need to use splice aware aligner such as STAR, we can just use the faster splice unaware aligner bwa.
### Step 1: bwa index
bwa requires you to first index the genome fasta file. In this turorial, I followed the procedures in https://icb.med.cornell.edu/wiki/index.php/Elementolab/BWA_tutorial to download the mm10 genome fasta file from UCSC genome browser. Please see code "bwa_index" for details
### Step 2: bwa mem alignment
