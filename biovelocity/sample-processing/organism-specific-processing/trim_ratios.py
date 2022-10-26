import re
import argparse

import pandas as pd

parser = argparse.ArgumentParser()

# add required keyword arguments to argparse parser
parser.add_argument("--ratios", required=True, help="Path to input BioV ratios file")
parser.add_argument(
    "--inputs", required=True, help="Path to organism specific Sample_Inputs.txt file"
)
parser.add_argument(
    "--output",
    required=True,
    help="Path to filtered classifier compatible output ratios file",
)

args = parser.parse_args()

# path to unfiltered ratios output from BioV
ratios_path = args.ratios

# organism specific Sample_Inputs.txt file from Noblis source code
sample_inputs_path = args.inputs

# filtered ratios output after processing using trim_ratios.py
filtered_ratios_path = args.output

ratios_df = pd.read_csv(ratios_path)

# remove columns 1 through 6
ratios_df.drop(
    columns=[
        "readset",
        "total reads",
        "total alignments",
        "perfect alignments",
        "imperfect alignments",
        "unaligned reads",
    ],
    axis=1,
    inplace=True,
)

# sort columns in ratios file alphabetically
ratios_df = ratios_df[sorted(ratios_df)]

# regular expression to remove all non genome columns from Sample_Inputs.txt
# r = re.compile("^[SAM][a-zA-Z0-9]*")
genomes_subset = pd.read_csv(sample_inputs_path, sep="\t", nrows=1)
# genomes_subset = list(filter(r.match, genomes_subset.columns.to_list()))
genomes_subset = genomes_subset.columns.to_list()

# subset ratios file based on genome list from Sample_Inputs.txt
ratios_df = ratios_df[ratios_df.columns.intersection(genomes_subset)]

ratios_df.to_csv(filtered_ratios_path, header=False, index=False, sep="\t")
