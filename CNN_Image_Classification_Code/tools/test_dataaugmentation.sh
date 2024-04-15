#!/bin/bash
echo "Testing resnet34_bs4_lr0.1 baseline model with random color jittering applied"
python tools/test.py \
    --config 'configs/dataaugment/resnet34_flowers_bs4_colorjitter.py' \
    --checkpoint 'output/dataaugment/resnet34_flowers_bs4_colorjitter/latest.pth' \
    --out 'output/dataaugment/resnet34_flowers_bs4_colorjitter/test.json' \
    --metrics 'accuracy'

echo "Testing resnet34_bs4_lr0.1 baseline model with random rescaling applied"
python tools/test.py \
    --config 'configs/dataaugment/resnet34_flowers_bs4_randrescale.py' \
    --checkpoint 'output/dataaugment/resnet34_flowers_bs4_randrescale/latest.pth' \
    --out 'output/dataaugment/resnet34_flowers_bs4_randrescale/test.json' \
    --metrics 'accuracy'

echo "Testing resnet34_bs4_lr0.1 baseline model with random rotation applied"
python tools/test.py \
    --config 'configs/dataaugment/resnet34_flowers_bs4_randrotate.py' \
    --checkpoint 'output/dataaugment/resnet34_flowers_bs4_randrotate/latest.pth' \
    --out 'output/dataaugment/resnet34_flowers_bs4_randrotate/test.json' \
    --metrics 'accuracy'

echo "Testing resnet34_bs4_lr0.1 baseline model with random vertical flipping applied"
python tools/test.py \
    --config 'configs/dataaugment/resnet34_flowers_bs4_randvertflip.py' \
    --checkpoint 'output/dataaugment/resnet34_flowers_bs4_randvertflip/latest.pth' \
    --out 'output/dataaugment/resnet34_flowers_bs4_randvertflip/test.json' \
    --metrics 'accuracy'

echo "Testing resnet34_bs4_lr0.1 baseline model with all the above techniques applied"
python tools/test.py \
    --config 'configs/dataaugment/resnet34_flowers_bs4_alltech.py' \
    --checkpoint 'output/dataaugment/resnet34_flowers_bs4_alltech/latest.pth' \
    --out 'output/dataaugment/resnet34_flowers_bs4_alltech/test.json' \
    --metrics 'accuracy'
