#!/bin/bash

# TODO: make the bash file work with flag values for different runs
bs=1000
retrieved_results_path=clip_queries/retrieved.jsonl
caption_count=$(wc -l < $retrieved_results_path)
echo $caption_count

for params in "1 fewshot_random" "5 fewshot_random"; do
    set -- $params
    k=$1
    echo $k
    prompt_mode=$2
    echo $prompt_mode
    for ((i = 0; i < $caption_count; i += $bs)); do
        echo $image_count
        next_index=$((i + bs))
        CUDA_VISIBLE_DEVICES=5 python text_to_image_inference.py \
        --prompt_mode $prompt_mode \
        --base_mbeir_path /mnt/users/s8sharif/M-BEIR \
        --candidates_file_path /mnt/users/s8sharif/M-BEIR/cand_pool/global/mbeir_union_test_cand_pool.jsonl \
        --k=$k \
        --model_name lavit \
        --index $i"_"$next_index \
        --output_dir  /mnt/users/s8sharif/UniIR/llm_outputs \
        --retrieved_results_path $retrieved_results_path \
        --retriever_name "CLIP_SF"      
    done
done
