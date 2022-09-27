nohup python3 te4/code/tools/run_biov.py te4/code/biov/BioVelocity_1_2_10 \
-d results/biov/jobfiles/sample_composition \
-rE -R spatil@lbl.gov > results/biov/sample_composition/logs/sample_composition.log &

nohup python3 /data/iarpa/analysis/noblis/te4/code/post-processing/sample_composition.py \ 
    -d /data/iarpa/analysis/noblis/results/biov/sample_composition/${samplename}.bac/ \
    -o /data/iarpa/analysis/noblis/results/sample_composition/ \ 
    -m /data/iarpa/analysis/noblis/te4/data/indices/sample_comp/bac/prok.v4_mapper.txt \ 
    -t bac

nohup python3 /data/iarpa/analysis/noblis/te4/code/post-processing/sample_composition.py \ 
    -d /data/iarpa/analysis/noblis/results/biov/sample_composition/${samplename}.euk/ \
    -o /data/iarpa/analysis/noblis/results/sample_composition/ \
    -m /data/iarpa/analysis/noblis/te4/data/indices/sample_comp/euk/euk.v4_mapper.txt \
    -t euk

nohup python3 /data/iarpa/analysis/noblis/te4/code/post-processing/sample_composition.py \
    -d /data/iarpa/analysis/noblis/results/biov/sample_composition/${samplename}.viral/ \
    -o /data/iarpa/analysis/noblis/results/sample_composition/  \
    -m /data/iarpa/analysis/noblis/te4/data/indices/sample_comp/viral/virus.v3_mapper.txt \
    -t viral
    