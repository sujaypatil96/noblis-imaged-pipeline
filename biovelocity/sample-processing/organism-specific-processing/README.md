## Classifer Specific Ratios Processing

It is necessary to run the [trim_ratios.py](trim_ratios.py) file on the ratios output from BioV to make it conformant with the input that is accepted by the classifier.

To run the script you will need 3 files:
* ratios output from BioV
* Sample_Inputs.txt file that is specific to your organism from Noblis TE4 source code
* filtered ratios output file path

Command:

```
python ~/path/to/trim_ratios.py
``
