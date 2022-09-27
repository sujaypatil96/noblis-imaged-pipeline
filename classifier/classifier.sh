# name of the parameter file
PARAMETER_FILE = $1

# name of the data file to be run
DATA_FILE = $2

# number of data sets in data file
NUM_DATA_SETS = $3

# name of prediction output file
OUTPUT_FILE = $4

/users/bbooth/src/NSI_Classifier_Source/NSI_Classifier \ 
    ${PARAMETER_FILE} \ 
    ${DATA_FILE} \
    ${NUM_DATA_SETS} \
    ${OUTPUT_FILE}
