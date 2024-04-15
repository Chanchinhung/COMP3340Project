#!/bin/bash
echo "Testing vgg16_bs4_lr0.1"
python tools/test.py \
    --config 'configs/vgg/vgg16/lr0.1/vgg16_flowers_bs4.py' \
    --checkpoint 'output/vgg16/bs4/lr0.1/latest.pth' \
    --out 'output/bs4/lr0.1/test.json' \
    --metrics 'accuracy'

echo "Testing vgg16_bs4_lr0.01"
python tools/test.py \
    --config 'configs/vgg/vgg16/lr0.01/vgg16_flowers_bs4.py' \
    --checkpoint 'output/vgg16/bs4/lr0.01/latest.pth' \
    --out 'output/vgg16/bs4/lr0.01/test.json' \
    --metrics 'accuracy'

echo "Testing vgg16_bs4_lr0.001"
python tools/test.py \
    --config 'configs/vgg/vgg16/lr0.001/vgg16_flowers_bs4.py' \
    --checkpoint 'output/vgg16/bs4/lr0.001/latest.pth' \
    --out 'output/vgg16/bs4/lr0.001/test.json' \
    --metrics 'accuracy'

echo "Testing vgg16_bs16_lr0.1"
python tools/test.py \
    --config 'configs/vgg/vgg16/lr0.1/vgg16_flowers_bs16.py' \
    --checkpoint 'output/vgg16/bs16/lr0.1/latest.pth' \
    --out 'output/vgg16/bs16/lr0.1/test.json' \
    --metrics 'accuracy'

echo "Testing vgg16_bs16_lr0.01"
python tools/test.py \
    --config 'configs/vgg/vgg16/lr0.01/vgg16_flowers_bs16.py' \
    --checkpoint 'output/vgg16/bs16/lr0.01/latest.pth' \
    --out 'output/vgg16/bs16/lr0.01/test.json' \
    --metrics 'accuracy'

echo "Testing vgg16_bs16_lr0.001"
python tools/test.py \
    --config 'configs/vgg/vgg16/lr0.001/vgg16_flowers_bs16.py' \
    --checkpoint 'output/vgg16/bs16/lr0.001/latest.pth' \
    --out 'output/vgg16/bs16/lr0.001/test.json' \
    --metrics 'accuracy'

echo "Testing vgg16_bs64_lr0.1"
python tools/test.py \
    --config 'configs/vgg/vgg16/lr0.1/vgg16_flowers_bs64.py' \
    --checkpoint 'output/vgg16/bs64/lr0.1/latest.pth' \
    --out 'output/vgg16/bs64/lr0.1/test.json' \
    --metrics 'accuracy'

echo "Testing vgg16_bs64_lr0.01"
python tools/test.py \
    --config 'configs/vgg/vgg16/lr0.01/vgg16_flowers_bs64.py' \
    --checkpoint 'output/vgg16/bs64/lr0.01/latest.pth' \
    --out 'output/vgg16/bs64/lr0.01/test.json' \
    --metrics 'accuracy'

echo "Testing vgg16_bs64_lr0.001"
python tools/test.py \
    --config 'configs/vgg/vgg16/lr0.001/vgg16_flowers_bs64.py' \
    --checkpoint 'output/vgg16/bs64/lr0.001/latest.pth' \
    --out 'output/vgg16/bs64/lr0.001/test.json' \
    --metrics 'accuracy'
