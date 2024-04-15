#!/bin/bash

echo "Testing vgg19_bs4_lr0.01"
python tools/test.py \
    --config 'configs/vgg/vgg19/vgg19_flowers_bs4_lr0.01.py' \
    --checkpoint 'output/vgg19/vgg19_flowers_bs4_lr0.01/latest.pth' \
    --out 'output/vgg19/vgg19_flowers_bs4_lr0.01/test.json' \
    --metrics 'accuracy'

echo "Testing vgg19_bs4_lr0.001"
python tools/test.py \
    --config 'configs/vgg/vgg19/vgg19_flowers_bs4_lr0.001.py' \
    --checkpoint 'output/vgg19/vgg19_flowers_bs4_lr0.001/latest.pth' \
    --out 'output/vgg19/vgg19_flowers_bs4_lr0.001/test.json' \
    --metrics 'accuracy'

echo "Testing vgg19_bs4_lr0.0001"
python tools/test.py \
    --config 'configs/vgg/vgg19/vgg19_flowers_bs4_lr0.0001.py' \
    --checkpoint 'output/vgg19/vgg19_flowers_bs4_lr0.0001/latest.pth' \
    --out 'output/vgg19/vgg19_flowers_bs4_lr0.0001/test.json' \
    --metrics 'accuracy'

echo "Testing vgg19_bs16_lr0.01"
python tools/test.py \
    --config 'configs/vgg/vgg19/vgg19_flowers_bs16_lr0.01.py' \
    --checkpoint 'output/vgg19/vgg19_flowers_bs16_lr0.01/latest.pth' \
    --out 'output/vgg19/vgg19_flowers_bs16_lr0.01/test.json' \
    --metrics 'accuracy'

echo "Testing vgg19_bs16_lr0.001"
python tools/test.py \
    --config 'configs/vgg/vgg19/vgg19_flowers_bs16_lr0.001.py' \
    --checkpoint 'output/vgg19/vgg19_flowers_bs16_lr0.001/latest.pth' \
    --out 'output/vgg19/vgg19_flowers_bs16_lr0.001/test.json' \
    --metrics 'accuracy'

echo "Testing vgg19_bs16_lr0.001"
python tools/test.py \
    --config 'configs/vgg/vgg19/vgg19_flowers_bs16_lr0.001.py' \
    --checkpoint 'output/vgg19/vgg19_flowers_bs16_lr0.001/latest.pth' \
    --out 'output/vgg19/vgg19_flowers_bs16_lr0.001/test.json' \
    --metrics 'accuracy'