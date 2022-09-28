# Classifier

* Usually, the source, i.e., the base organism that a sample orginates from is unknown. BioVelocity and PanGenomePipeline can be used to determine which organisms and likely, and the appropriate classifier can then be used
* There are species specific pre trained classifiers. The list of organisms for which we currently have classifiers:
  * _A thaliana_
  * _B subtilis_
  * _E coli_
  * _S cerevisiae_
  * _S enterica_
  * Lentivirus
  * T7 phage
  * Rice
* Inputs are saved as tab delimited text files
  * No column headers should be present in input data file
  * Readsets should have numerical indices and not the readset name itself. The first column is a numerical index starting from 0 through n
  * All column values must be numerical
* _Data sets_ corresponds to number of samples found in the data file
* For each sample, the output from the neural network is a value between [0,1] where:
  * 0: natural
  * 1: synthetic engineering present
  * Note: to reach a decision about the sample being either natual or engineered, we need to apply a decision threshold
  