#!/bin/bash
echo "Testing resnet34_bs4_lr0.1"
python tools/test.py \
  --config 'configs/resnet/resnet34/lr0.1/resnet34_flowers_bs4.py' \
  --checkpoint 'output/resnet34/bs4/lr0.1/latest.pth' \
  --out 'output/resnet34/bs4/lr0.1/test.json' \
  --metrics 'accuracy'

echo "Testing resnet34_bs4_lr0.01"
python tools/test.py \
  --config 'configs/resnet/resnet34/lr0.01/resnet34_flowers_bs4.py' \
  --checkpoint 'output/resnet34/bs4/lr0.01/latest.pth' \
  --out 'output/resnet34/bs4/lr0.01/test.json' \
  --metrics 'accuracy'

echo "Testing resnet34_bs4_lr0.001"
python tools/test.py \
  --config 'configs/resnet/resnet34/lr0.001/resnet34_flowers_bs4.py' \
  --checkpoint 'output/resnet34/bs4/lr0.001/latest.pth' \
  --out 'output/resnet34/bs4/lr0.001/test.json' \
  --metrics 'accuracy'

echo "Testing resnet34_bs16_lr0.1"
python tools/test.py \
  --config 'configs/resnet/resnet34/lr0.1/resnet34_flowers_bs16.py' \
  --checkpoint 'output/resnet34/bs16/lr0.1/latest.pth' \
  --out 'output/resnet34/bs16/lr0.1/test.json' \
  --metrics 'accuracy'

echo "Testing resnet34_bs16_lr0.01"
python tools/test.py \
  --config 'configs/resnet/resnet34/lr0.01/resnet34_flowers_bs16.py' \
  --checkpoint 'output/resnet34/bs16/lr0.01/latest.pth' \
  --out 'output/resnet34/bs16/lr0.01/test.json' \
  --metrics 'accuracy'

echo "Testing resnet34_bs16_lr0.001"
python tools/test.py \
  --config 'configs/resnet/resnet34/lr0.001/resnet34_flowers_bs16.py' \
  --checkpoint 'output/resnet34/bs16/lr0.001/latest.pth' \
  --out 'output/resnet34/bs16/lr0.001/test.json' \
  --metrics 'accuracy'

echo "Testing resnet34_bs64_lr0.1"
python tools/test.py \
  --config 'configs/resnet/resnet34/lr0.1/resnet34_flowers_bs64.py' \
  --checkpoint 'output/resnet34/bs64/lr0.1/latest.pth' \
  --out 'output/resnet34/bs64/lr0.1/test.json' \
  --metrics 'accuracy'

echo "Testing resnet34_bs64_lr0.01"
python tools/test.py \
  --config 'configs/resnet/resnet34/lr0.01/resnet34_flowers_bs64.py' \
  --checkpoint 'output/resnet34/bs64/lr0.01/latest.pth' \
  --out 'output/resnet34/bs64/lr0.01/test.json' \
  --metrics 'accuracy'

echo "Testing resnet34_bs64_lr0.001"
python tools/test.py \
  --config 'configs/resnet/resnet34/lr0.001/resnet34_flowers_bs64.py' \
  --checkpoint 'output/resnet34/bs64/lr0.001/latest.pth' \
  --out 'output/resnet34/bs64/lr0.001/test.json' \
  --metrics 'accuracy'
