# path to results_folder_gen.py file
RESULTS_TEMPLATE_GEN = $1

# location where results folder should be created
RESULTS_GEN_PATH = $2

python ${RESULTS_TEMPLATE_GEN} -p ${RESULTS_GEN_PATH} -v
