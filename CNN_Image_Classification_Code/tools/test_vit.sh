#!/bin/bash

echo "Testing ViT_lr0.001"
python tools/test.py \
    --config 'configs/vision_transformer/lr0.001/vit_base_patch16_224_fromscratch_flowers.py' \
    --checkpoint 'output/vit/lr0.001/vit_base_patch16_224_fromscratch_flowers/latest.pth' \
    --out 'output/vit/lr0.001/vit_base_patch16_224_fromscratch_flowers/test.json' \
    --metrics 'accuracy'

echo "Testing ViT_lr0.0001"
python tools/test.py \
    --config 'configs/vision_transformer/lr0.0001/vit_base_patch16_224_fromscratch_flowers.py' \
    --checkpoint 'output/vit/lr0.0001/vit_base_patch16_224_fromscratch_flowers/latest.pth' \
    --out 'output/vit/lr0.0001/vit_base_patch16_224_fromscratch_flowers/test.json' \
    --metrics 'accuracy'

echo "Testing ViT_lr0.00001"
python tools/test.py \
    --config 'configs/vision_transformer/lr0.00001/vit_base_patch16_224_fromscratch_flowers.py' \
    --checkpoint 'output/vit/lr0.00001/vit_base_patch16_224_fromscratch_flowers/latest.pth' \
    --out 'output/vit/lr0.00001/vit_base_patch16_224_fromscratch_flowers/test.json' \
    --metrics 'accuracy'

echo "Testing ViT_lr0.00003125"
python tools/test.py \
    --config 'configs/vision_transformer/lr0.00003125/vit_base_patch16_224_fromscratch_flowers.py' \
    --checkpoint 'output/vit/lr0.00003125/vit_base_patch16_224_fromscratch_flowers/latest.pth' \
    --out 'output/vit/lr0.00003125/vit_base_patch16_224_fromscratch_flowers/test.json' \
    --metrics 'accuracy'