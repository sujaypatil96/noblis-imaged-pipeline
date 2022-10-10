import re
import pandas as pd

# path to unfiltered ratios output from BioV
ratios_path = r"/Users/sujaypatil/Desktop/noblis-imaged-pipeline/biovelocity/sample-processing/organism-specific-processing/data/merged_gff_summaries_s_ent_ratio.csv"

# organism specific Sample_Inputs.txt file from Noblis source code
sample_inputs_path = r"/Users/sujaypatil/Desktop/noblis-imaged-pipeline/biovelocity/sample-processing/organism-specific-processing/data/Sample_Inputs.txt"

# filtered ratios output after processing using trim_ratios.py
filtered_ratios_path = r"/Users/sujaypatil/Desktop/noblis-imaged-pipeline/biovelocity/sample-processing/organism-specific-processing/data/filtered_merged_gff_summaries_s_ent_ratio.csv"

ratios_df = pd.read_csv(ratios_path)

# remove columns 1 through 6
ratios_df.drop(columns=["readset", "total reads", "total alignments", "perfect alignments", "imperfect alignments", "unaligned reads"], axis=1, inplace=True)

# sort columns in ratios file alphabetically
ratios_df = ratios_df[sorted(ratios_df)]

# regular expression to remove all non genome columns from Sample_Inputs.txt
r = re.compile("^[SAM][a-zA-Z0-9]*")
genomes_subset = pd.read_csv(sample_inputs_path, sep="\t", nrows=1)
genomes_subset = list(filter(r.match, genomes_subset.columns.to_list()))

# subset ratios file based on genome list from Sample_Inputs.txt
ratios_df = ratios_df[ratios_df.columns.intersection(genomes_subset)]

ratios_df.to_csv(filtered_ratios_path, header=False)
