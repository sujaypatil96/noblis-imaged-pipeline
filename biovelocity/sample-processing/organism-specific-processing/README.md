## Classifer Specific Ratios Processing

The output from BioVelocity, i.e., the results from the organism specific processing step is a merged GFF summaries file. This file contains ratios which are used as features to train the classifier, which is the next step in the pipeline.

A quick nit here is that the format that the classifier expects the ratios file in is a little different from the above merged GFF summaries file, and it can be formatted in the conformant format using the [trim_ratios.py](trim_ratios.py) file.

The `trim_ratios.py` Python file is a command line tool with the below usage:

To run the script you will need 3 files:
* `--ratios`: unprocessed CSV ratios output from BioVelocity
* `--inputs`: `Sample_Inputs.txt` file that is specific to your organism from Noblis TE4 source code
* `--output`: processed ratios output file path as TSV file

Command:

```
python ~/path/to/trim_ratios.py --ratios ~/path/to/ratios_file.csv --inputs ~/path/to/Sample_Inputs.txt --output ~/path/to/output.tsv
```
