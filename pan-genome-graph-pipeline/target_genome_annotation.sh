# path to multi_pgg_annotate_new.pl script
TARGET_GENOME_ANNOTATION_PL = $1

# list of genome identifiers with paths to contigs
PGG_GENOMES_LIST = $2

# new list with target genomes to be annotated
NEW_GENOMES = $3

# linear and circular contigs
TOPOLOGY = $4

# toplogy file for target genomes to be annotated
NEW_TOPOLOGY = $5

# location of refined PGG directory
REFINED_PGG_DIR = $6

# organism specific initial PGG
INITIAL_PGG_DIR = $7

# path to all FELIX binaries directory
FELIX_BIN = $8

# path to Muscle binary
MUSCLE_BIN = $9

USR_BIN = "usr/bin"

nohup ${TARGET_GENOME_ANNOTATION_PL} \
    -genomes ${PGG_GENOMES_LIST} \
    -new_genomes ${NEW_GENOMES} \
    -topology ${TOPOLOGY} \
    -new_topology ${NEW_TOPOLOGY} \
    -pgg ${REFINED_PGG_DIR}/pgg.txt \
    -single_copy ${REFINED_PGG_DIR}/single_copy_clusters.txt \
    -pggdb ${INITIAL_PGG_DIR}/PGG_blastdb \
    -bin_directory ${FELIX_BIN} \
    -blast_directory ${USR_BIN} \
    -ld_load_directory ${USR_BIN} \
    -blast_task blastn \
    -muscle_path ${MUSCLE_BIN} \
    -rscript_path ${USR_BIN}/Rscript \
    -multifastadir ${REFINED_PGG_DIR}/multifasta \
    -attributes ${REFINED_PGG_DIR}/combined.att \
    -weights ${REFINED_PGG_DIR}/cluster_sizes.txt \
    -project NONE \
    -medoids ${REFINED_PGG_DIR}/medoids.fasta \
    -match ${REFINED_PGG_DIR}/matchtable.txt \
    -qsub_queue NONE \
    -max_grid_jobs 100 \
    -strip_version \
    -less_memory \
    -no_grid \
    -debug