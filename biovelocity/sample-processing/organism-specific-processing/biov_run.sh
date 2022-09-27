# path to Python BioV automator
BIOV_PY_PATH = $1

# path to BioV binary
BIOV_BIN_PATH = $2

# path to sample specific jobfiles
JOBFILES_DIR = $3

# full email
EMAIL = $4

# path to log file
LOGFILE_PATH = $5

nohup python3 ${BIOV_PY_PATH} ${BIOV_BIN_PATH} \
    -d ${JOBFILES_DIR} \
    -rE -R ${EMAIL} > ${LOGFILE_PATH} &
