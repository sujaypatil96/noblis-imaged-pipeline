FELIX_CONDA_ENV_YML = $1

conda activate
conda env create -f ${FELIX_CONDA_ENV_YML}
conda activate felix
conda env list