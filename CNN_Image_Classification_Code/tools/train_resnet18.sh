#!/bin/bash


echo "Training resnet18_bs4_lr0.1"
python tools/train.py \
	--config 'configs/resnet/resnet18/lr0.1/resnet18_flowers_bs4.py' \
	--work-dir 'output/resnet18/bs4/lr0.1'

echo "Training resnet18_bs4_lr0.01"
python tools/train.py \
	--config 'configs/resnet/resnet18/lr0.01/resnet18_flowers_bs4.py' \
	--work-dir 'output/resnet18/bs4/lr0.01'

echo "Training resnet18_bs4_lr0.001"
python tools/train.py \
	--config 'configs/resnet/resnet18/lr0.001/resnet18_flowers_bs4.py' \
	--work-dir 'output/resnet18/bs4/lr0.001'

echo "Training resnet18_bs16_lr0.1"
python tools/train.py \
	--config 'configs/resnet/resnet18/lr0.1/resnet18_flowers_bs16.py' \
	--work-dir 'output/resnet18/bs16/lr0.1'

echo "Training resnet18_bs16_lr0.01"
python tools/train.py \
	--config 'configs/resnet/resnet18/lr0.01/resnet18_flowers_bs16.py' \
	--work-dir 'output/resnet18/bs16/lr0.01'

echo "Training resnet18_bs16_lr0.001"
python tools/train.py \
	--config 'configs/resnet/resnet18/lr0.001/resnet18_flowers_bs16.py' \
	--work-dir 'output/resnet18/bs16/lr0.001'

echo "Training resnet18_bs64_lr0.1"
python tools/train.py \
	--config 'configs/resnet/resnet18/lr0.1/resnet18_flowers_bs64.py' \
	--work-dir 'output/resnet18/bs64/lr0.1'

echo "Training resnet18_bs64_lr0.01"
python tools/train.py \
	--config 'configs/resnet/resnet18/lr0.01/resnet18_flowers_bs64.py' \
	--work-dir 'output/resnet18/bs64/lr0.01'

echo "Training resnet18_bs64_lr0.001"
python tools/train.py \
	--config 'configs/resnet/resnet18/lr0.001/resnet18_flowers_bs64.py' \
	--work-dir 'output/resnet18/bs64/lr0.001'




