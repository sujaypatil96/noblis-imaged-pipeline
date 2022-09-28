# Sample Processing steps as part of BioV pipeline

The main steps that are part of sample processing pipeline:
1. Creation of jobfiles
  * Jobfiles for the sample composition step in [sample_composition.sh](sample-processing/sample-composition/sample_composition.sh) run BioV against the NCBI prokaryotic index, eukaryotic index and viral genome index
  * Jobfiles for the organism specific processing step in [organism_detection.py](sample-processing/organism-specific-processing/organism_detection.sh) run against the specific organism which has been indentified after the sample composition step
2. Run BioV for above set of jobfiles in two separate processes
3. Run [sample_composition.sh](sample-processing/sample-composition/sample_composition.sh) on output of BioV run for sample composition
4. Run [organism_detection.sh](sample-processing/organism-specific-processing/organism_detection.sh) on BioV run for organism specific processing
