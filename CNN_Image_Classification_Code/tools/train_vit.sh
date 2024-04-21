#!/bin/bash

echo "Training ViT_lr0.001"
python tools/train.py --config 'configs/vision_transformer/lr0.001/vit_base_patch16_224_fromscratch_flowers.py' --work-dir  'output/vit/lr0.001/vit_base_patch16_224_fromscratch_flowers'

echo "Training ViT_lr0.0001"
python tools/train.py --config 'configs/vision_transformer/lr0.0001/vit_base_patch16_224_fromscratch_flowers.py' --work-dir  'output/vit/lr0.0001/vit_base_patch16_224_fromscratch_flowers'

echo "Training ViT_lr0.00001"
python tools/train.py --config 'configs/vision_transformer/lr0.00001/vit_base_patch16_224_fromscratch_flowers.py' --work-dir  'output/vit/lr0.00001/vit_base_patch16_224_fromscratch_flowers'

echo "Training ViT_lr0.00003125"
python tools/train.py --config 'configs/vision_transformer/lr0.00003125/vit_base_patch16_224_fromscratch_flowers.py' --work-dir  'output/vit/lr0.00003125/vit_base_patch16_224_fromscratch_flowers'