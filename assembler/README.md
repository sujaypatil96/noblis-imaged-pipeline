# Assembly and Binning

* Get the panmaker test index

```bash
wget https://salk-tm-pub.s3.us-west-2.amazonaws.com/felix/felix.v4.pkidx.tar
```

* Clone Assembly and Binning pipeline repo

```bash
git clone https://gitlab.com/salk-tm/snake_phase2.git
```

* Build an environment with needed dependencies

```bash
wget https://raw.githubusercontent.com/nhartwic/salk-containers/master/felix_assembly.yml
conda env create -n felix_assembly -f ~/path/to/felix_assembly.yml
conda activate felix_assembly
apt-get update -y
apt-get install -y build-essential
git clone https://gitlab.com/semarpetrus/pk_binning.git
cd pk_binning/
python setup.py build_ext --inplace
python setup.py install
```
