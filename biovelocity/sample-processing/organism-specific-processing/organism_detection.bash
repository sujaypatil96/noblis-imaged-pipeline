nohup python3 te4/code/tools/run_biov.py te4/code/biov/BioVelocity_1_2_10 \
-d results/biov/jobfiles/organism_specific \
-rE -R spatil@lbl.gov > results/biov/organism_specific/logs/organism_specific_processing.log &

nohup python3 te4/code/post-processing/merge_gff_summaries.py \
-d results/biov/organism_specific/N373.p_putida/ \
-m te4/data/indices/organisms/p_putida/putida.v1.mapper.txt \
-o results/biov/organism_specific/N373.p_putida/merged_gff_summaries_p_putida.csv \
-l results/biov/organism_specific/N373.p_putida/logs/merge_gff_summaries.log &

nohup python3 te4/code/post-processing/merge_gff_summaries.py \
-d results/biov/organism_specific/N409.c_fre/ \
-m te4/data/indices/organisms/c_fre/c_fre.v1_mapper.txt \
-o results/biov/organism_specific/N409.c_fre/merged_gff_summaries_c_fre.csv \
-l results/biov/organism_specific/N409.c_fre/logs/merge_gff_summaries.log &

nohup python3 te4/code/post-processing/merge_gff_summaries.py \
-d results/biov/organism_specific/N412.s_ent/ \
-m te4/data/indices/organisms/s_ent/s_ent.v2_mapper.txt \
-o results/biov/organism_specific/N412.s_ent/merged_gff_summaries_s_ent.csv \
-l results/biov/organism_specific/N412.s_ent/logs/merge_gff_summaries.log &

nohup python3 te4/code/post-processing/merge_gff_summaries.py \
-d results/biov/organism_specific/N422.e_coli/ \
-m te4/data/indices/organisms/e_coli/e_coli_v3_mapper.txt \
-o results/biov/organism_specific/N422.e_coli/merged_gff_summaries_e_coli.csv \
-l results/biov/organism_specific/N422.e_coli/logs/merge_gff_summaries.log &
