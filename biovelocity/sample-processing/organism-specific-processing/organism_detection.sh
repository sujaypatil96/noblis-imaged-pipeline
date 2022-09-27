# path to BioV merge_gff_summaries.py file
MERGE_GFF_SUMMARIES_PY = $1

# BioV output dir
BIOV_OUTPUT_DIR =  $2

# organism specific mapper
ORGANISM_MAPPER = $3

# merge_gff_summaries output
MERGE_OUTPUT_DIR = $4

# log file path
LOG_FILE = $5

nohup python ${MERGE_GFF_SUMMARIES_PY} \
    -d ${BIOV_OUTPUT_DIR} \
    -m ${ORGANISM_MAPPER} \
    -o ${MERGE_OUTPUT_DIR} \
    -l ${LOG_FILE} &
