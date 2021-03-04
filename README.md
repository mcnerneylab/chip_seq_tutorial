# chip_seq_tutorial


## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)
* [Step 1: fastqc](#fastqc)
* [Step optional: joining fastqs in batch] (#optional join fastqs)

## General info
This is a demonstration workflow of how to analyze ChIP seq data, the data set we used are
	
## Technologies
Project is created with:
* Lorem version: 12.3
* Ipsum version: 2.33
* Ament library version: 999

## FastQC
Please see **fastQC.Rmd.**
We use the fastqc R package to perform QC on every single raw fastq file and aggregate the report into a table.

## optional: joining fastqs in batch
Please see **batch_join_fastqs**
Use this script to join fastqs if they are from different sequencing lanes
