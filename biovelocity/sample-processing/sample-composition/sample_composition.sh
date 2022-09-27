# path to sample_composition.py file
SAMPLE_COMPOSITION_PY = $1

# path to dir with BioV output
BIOV_OUTPUT_DIR = $2

# path to species mapper file
ORGANISM_MAPPER = $3

# path to dir with sample composition output
OUTPUT_DIR = $4

if [[ $ORGANISM_MAPPER == *"prok"* ]]; then
    IDX = "bac"
elif [[ $ORGANISM_MAPPER == *"euk"* ]]; then
    IDX = "euk"
elif [[ $ORGANISM_MAPPER == *"viral"* ]]; then
    IDX = "viral"
fi

nohup python ${SAMPLE_COMPOSITION_PY} \ 
    -d ${BIOV_OUTPUT_DIR} \
    -m ${ORGANISM_MAPPER} \ 
    -o ${OUTPUT_DIR} \ 
    -t ${IDX}
