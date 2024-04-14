#!/bin/bash


echo "Training resnet34_bs4_lr0.1"
python tools/train.py \
  --config 'configs/resnet/resnet34/lr0.1/resnet34_flowers_bs4.py' \
  --work-dir 'output/resnet34/bs4/lr0.1'\

echo "Training resnet34_bs4_lr0.01"
python tools/train.py \
  --config 'configs/resnet/resnet34/lr0.01/resnet34_flowers_bs4.py' \
  --work-dir 'output/resnet34/bs4/lr0.01'\

echo "Training resnet34_bs4_lr0.001"
python tools/train.py \
  --config 'configs/resnet/resnet34/lr0.001/resnet34_flowers_bs4.py' \
  --work-dir 'output/resnet34/bs4/lr0.001'\

echo "Training resnet34_bs16_lr0.1"
python tools/train.py \
  --config 'configs/resnet/resnet34/lr0.1/resnet34_flowers_bs16.py' \
  --work-dir 'output/resnet34/bs16/lr0.1'\

echo "Training resnet34_bs16_lr0.01"
python tools/train.py \
  --config 'configs/resnet/resnet34/lr0.01/resnet34_flowers_bs16.py' \
  --work-dir 'output/resnet34/bs16/lr0.01'\

echo "Training resnet34_bs16_lr0.001"
python tools/train.py \
  --config 'configs/resnet/resnet34/lr0.001/resnet34_flowers_bs16.py' \
  --work-dir 'output/resnet34/bs16/lr0.001'

echo "Training resnet34_bs64_lr0.1"
python tools/train.py \
  --config 'configs/resnet/resnet34/lr0.1/resnet34_flowers_bs64.py' \
  --work-dir 'output/resnet34/bs64/lr0.1'\

echo "Training resnet34_bs64_lr0.01"
python tools/train.py \
  --config 'configs/resnet/resnet34/lr0.01/resnet34_flowers_bs64.py' \
  --work-dir 'output/resnet34/bs64/lr0.01'\

echo "Training resnet34_bs64_lr0.001"
python tools/train.py \
  --config 'configs/resnet/resnet34/lr0.001/resnet34_flowers_bs64.py' \
  --work-dir 'output/resnet34/bs64/lr0.001'\




