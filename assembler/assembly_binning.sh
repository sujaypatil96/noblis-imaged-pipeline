#!/bin/bash

# path to snakemake assembler .smk file
ASSEMBLER_SMK = $1

# name of your sample, which will be used as prefix
SAMPLE_PREFIX = $2

# illumina read 1 fastq.gz file
R1 = $3

# illumina read 2 fastq.gz file
R2 = $4

# oxford nanopore reads fastq.gz file
ONT = $5

# binning index .tar file
INDEX = $6

snakemake -p -j 32 \
    --snakemake ${ASSEMBLER_SMK} \
    --config \
        sample = ${SAMPLE_PREFIX} \
        r1 = ${R1} \
        r2 = ${R2} \
        ont = ${ONT} \
        index=${INDEX}
