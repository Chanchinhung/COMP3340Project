#!/bin/bash
echo "Testing resnet18_bs4_lr0.1"
python tools/test.py \
    --config 'configs/resnet/resnet18/lr0.1/resnet18_flowers_bs4.py' \
    --checkpoint 'output/resnet18/bs4/lr0.1/latest.pth' \
    --out 'output18/bs4/lr0.1/test.json' \
    --metrics 'accuracy'

echo "Testing resnet18_bs4_lr0.01"
python tools/test.py \
    --config 'configs/resnet/resnet18/lr0.01/resnet18_flowers_bs4.py' \
    --checkpoint 'output/resnet18/bs4/lr0.01/latest.pth' \
    --out 'output/resnet18/bs4/lr0.01/test.json' \
    --metrics 'accuracy'

echo "Testing resnet18_bs4_lr0.001"
python tools/test.py \
    --config 'configs/resnet/resnet18/lr0.001/resnet18_flowers_bs4.py' \
    --checkpoint 'output/resnet18/bs4/lr0.001/latest.pth' \
    --out 'output/resnet18/bs4/lr0.001/test.json' \
    --metrics 'accuracy'

echo "Testing resnet18_bs16_lr0.1"
python tools/test.py \
    --config 'configs/resnet/resnet18/lr0.1/resnet18_flowers_bs16.py' \
    --checkpoint 'output/resnet18/bs16/lr0.1/latest.pth' \
    --out 'output/resnet18/bs16/lr0.1/test.json' \
    --metrics 'accuracy'

echo "Testing resnet18_bs16_lr0.01"
python tools/test.py \
    --config 'configs/resnet/resnet18/lr0.01/resnet18_flowers_bs16.py' \
    --checkpoint 'output/resnet18/bs16/lr0.01/latest.pth' \
    --out 'output/resnet18/bs16/lr0.01/test.json' \
    --metrics 'accuracy'

echo "Testing resnet18_bs16_lr0.001"
python tools/test.py \
    --config 'configs/resnet/resnet18/lr0.001/resnet18_flowers_bs16.py' \
    --checkpoint 'output/resnet18/bs16/lr0.001/latest.pth' \
    --out 'output/resnet18/bs16/lr0.001/test.json' \
    --metrics 'accuracy'

echo "Testing resnet18_bs64_lr0.1"
python tools/test.py \
    --config 'configs/resnet/resnet18/lr0.1/resnet18_flowers_bs64.py' \
    --checkpoint 'output/resnet18/bs64/lr0.1/latest.pth' \
    --out 'output/resnet18/bs64/lr0.1/test.json' \
    --metrics 'accuracy'

echo "Testing resnet18_bs64_lr0.01"
python tools/test.py \
    --config 'configs/resnet/resnet18/lr0.01/resnet18_flowers_bs64.py' \
    --checkpoint 'output/resnet18/bs64/lr0.01/latest.pth' \
    --out 'output/resnet18/bs64/lr0.01/test.json' \
    --metrics 'accuracy'

echo "Testing resnet18_bs64_lr0.001"
python tools/test.py \
    --config 'configs/resnet/resnet18/lr0.001/resnet18_flowers_bs64.py' \
    --checkpoint 'output/resnet18/bs64/lr0.001/latest.pth' \
    --out 'output/resnet18/bs64/lr0.001/test.json' \
    --metrics 'accuracy'
