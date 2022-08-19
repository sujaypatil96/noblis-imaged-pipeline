snakemake -p -j 32 \
    --snakemake snake_phase2/snake_phase2.smk \
    --config \
        sample=pputida \
        r1=/data/iarpa/analysis/noblis/samples/N332.illumina.1.fq.gz \
        r2=/data/iarpa/analysis/noblis/samples/N332.illumina.2.fq.gz \
        index=p_putida.idx.tar

snakemake -p -j 32 \
    --snakemake snake_phase2/snake_phase2.smk \
    --config \
        sample=pputida \
        r1=/data/iarpa/analysis/noblis/samples/N373.illumina.1.fq.gz \
        r2=/data/iarpa/analysis/noblis/samples/N373.illumina.2.fq.gz \
        index=p_putida.idx.tar

snakemake -p -j 32 \
    --snakemake snake_phase2/snake_phase2.smk \
    --config \
        sample=pputida \
        r1=/data/iarpa/analysis/noblis/samples/N409.illumina.1.fq.gz \
        r2=/data/iarpa/analysis/noblis/samples/N409.illumina.2.fq.gz \
        index=p_putida.idx.tar

snakemake -p -j 32 \
    --snakemake snake_phase2/snake_phase2.smk \
    --config \
        sample=pputida \
        r1=/data/iarpa/analysis/noblis/samples/N422.illumina.1.fq.gz \
        r2=/data/iarpa/analysis/noblis/samples/N422.illumina.2.fq.gz \
        index=p_putida.idx.tar
        