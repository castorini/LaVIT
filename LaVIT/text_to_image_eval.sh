#!/bin/bash

for run_name in CLIP_SF_k1 CLIP_SF_k5; do
        CUDA_VISIBLE_DEVICES=5 python txt_to_img_eval.py \
        --retrieved-results dataset/clip/retrieved.jsonl \
        --generated-img-dir /store2/scratch/s8sharif/UniIR/txt_to_img_llm_outputs/lavit_outputs/${run_name}/generated_images \
        --ground-truth-img-dir /store2/scratch/s8sharif/LaVIT/dataset/clip/renamed_images \
        --output-file /store2/scratch/s8sharif/UniIR/txt_to_img_llm_outputs/lavit_outputs/metrics/${run_name}.json \
        --calculate-metrics-for-retriever \
        --base-image-dir /mnt/users/s8sharif/M-BEIR
    done

for run_name in BLIP_FF_k0 BLIP_FF_k1 BLIP_FF_k5; do
        CUDA_VISIBLE_DEVICES=5 python txt_to_img_eval.py \
        --retrieved-results dataset/blip/retrieved.jsonl \
        --generated-img-dir /store2/scratch/s8sharif/UniIR/txt_to_img_llm_outputs/lavit_outputs/${run_name}/generated_images \
        --ground-truth-img-dir /store2/scratch/s8sharif/LaVIT/dataset/blip/renamed_images \
        --output-file /store2/scratch/s8sharif/UniIR/txt_to_img_llm_outputs/lavit_outputs/metrics/${run_name}.json \
        --calculate-metrics-for-retriever \
        --base-image-dir /mnt/users/s8sharif/M-BEIR
    done

for run_name in BLIP_FF_k0 BLIP_FF_k1; do
        CUDA_VISIBLE_DEVICES=5 python txt_to_img_eval.py \
        --retrieved-results dataset/blip/retrieved.jsonl \
        --generated-img-dir /store2/scratch/s8sharif/UniIR/txt_to_img_llm_outputs/emu2_outputs/${run_name}/renamed_generated_images \
        --ground-truth-img-dir /store2/scratch/s8sharif/LaVIT/dataset/blip/renamed_images \
        --output-file /store2/scratch/s8sharif/UniIR/txt_to_img_llm_outputs/emu2_outputs/metrics/${run_name}.json \
        --calculate-metrics-for-retriever \
        --base-image-dir /mnt/users/s8sharif/M-BEIR
    done

for run_name in CLIP_SF_k1; do
        CUDA_VISIBLE_DEVICES=5 python txt_to_img_eval.py \
        --retrieved-results dataset/clip/retrieved.jsonl \
        --generated-img-dir /store2/scratch/s8sharif/UniIR/txt_to_img_llm_outputs/emu2_outputs/${run_name}/renamed_generated_images \
        --ground-truth-img-dir /store2/scratch/s8sharif/LaVIT/dataset/clip/renamed_images \
        --output-file /store2/scratch/s8sharif/UniIR/txt_to_img_llm_outputs/emu2_outputs/metrics/${run_name}.json \
        --calculate-metrics-for-retriever \
        --base-image-dir /mnt/users/s8sharif/M-BEIR
    done

for run_name in CLIP_SF_k0_resampled CLIP_SF_k1_resampled CLIP_SF_k5_resampled; do
        CUDA_VISIBLE_DEVICES=5 python txt_to_img_eval.py \
        --retrieved-results dataset/clip_resampled/retrieved.jsonl \
        --generated-img-dir /store2/scratch/s8sharif/UniIR/txt_to_img_llm_outputs/lavit_outputs/${run_name}/generated_images \
        --ground-truth-img-dir /store2/scratch/s8sharif/LaVIT/dataset/clip_resampled/renamed_images \
        --output-file /store2/scratch/s8sharif/UniIR/txt_to_img_llm_outputs/lavit_outputs/metrics/${run_name}.json \
        --calculate-metrics-for-retriever \
        --base-image-dir /mnt/users/s8sharif/M-BEIR
    done