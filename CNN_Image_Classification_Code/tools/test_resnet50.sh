#!/bin/bash
echo "Testing resnet50_bs4_lr0.1"
python tools/test.py \
    --config 'configs/resnet/resnet50/lr0.1/resnet50_flowers_bs4.py' \
    --checkpoint 'output/resnet50/bs4/lr0.1/latest.pth' \
    --out 'output50/bs4/lr0.1/test.json' \
    --metrics 'accuracy'

echo "Testing resnet50_bs4_lr0.01"
python tools/test.py \
    --config 'configs/resnet/resnet50/lr0.01/resnet50_flowers_bs4.py' \
    --checkpoint 'output/resnet50/bs4/lr0.01/latest.pth' \
    --out 'output/resnet50/bs4/lr0.01/test.json' \
    --metrics 'accuracy'

echo "Testing resnet50_bs4_lr0.001"
python tools/test.py \
    --config 'configs/resnet/resnet50/lr0.001/resnet50_flowers_bs4.py' \
    --checkpoint 'output/resnet50/bs4/lr0.001/latest.pth' \
    --out 'output/resnet50/bs4/lr0.001/test.json' \
    --metrics 'accuracy'

echo "Testing resnet50_bs16_lr0.1"
python tools/test.py \
    --config 'configs/resnet/resnet50/lr0.1/resnet50_flowers_bs16.py' \
    --checkpoint 'output/resnet50/bs16/lr0.1/latest.pth' \
    --out 'output/resnet50/bs16/lr0.1/test.json' \
    --metrics 'accuracy'

echo "Testing resnet50_bs16_lr0.01"
python tools/test.py \
    --config 'configs/resnet/resnet50/lr0.01/resnet50_flowers_bs16.py' \
    --checkpoint 'output/resnet50/bs16/lr0.01/latest.pth' \
    --out 'output/resnet50/bs16/lr0.01/test.json' \
    --metrics 'accuracy'

echo "Testing resnet50_bs16_lr0.001"
python tools/test.py \
    --config 'configs/resnet/resnet50/lr0.001/resnet50_flowers_bs16.py' \
    --checkpoint 'output/resnet50/bs16/lr0.001/latest.pth' \
    --out 'output/resnet50/bs16/lr0.001/test.json' \
    --metrics 'accuracy'

echo "Testing resnet50_bs64_lr0.1"
python tools/test.py \
    --config 'configs/resnet/resnet50/lr0.1/resnet50_flowers_bs64.py' \
    --checkpoint 'output/resnet50/bs64/lr0.1/latest.pth' \
    --out 'output/resnet50/bs64/lr0.1/test.json' \
    --metrics 'accuracy'

echo "Testing resnet50_bs64_lr0.01"
python tools/test.py \
    --config 'configs/resnet/resnet50/lr0.01/resnet50_flowers_bs64.py' \
    --checkpoint 'output/resnet50/bs64/lr0.01/latest.pth' \
    --out 'output/resnet50/bs64/lr0.01/test.json' \
    --metrics 'accuracy'

echo "Testing resnet50_bs64_lr0.001"
python tools/test.py \
    --config 'configs/resnet/resnet50/lr0.001/resnet50_flowers_bs64.py' \
    --checkpoint 'output/resnet50/bs64/lr0.001/latest.pth' \
    --out 'output/resnet50/bs64/lr0.001/test.json' \
    --metrics 'accuracy'
