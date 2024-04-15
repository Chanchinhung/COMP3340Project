#!/bin/bash


echo "Training resnet50_bs4_lr0.1"
python tools/train.py \
	--config 'configs/resnet/resnet50/lr0.1/resnet50_flowers_bs4.py' \
	--work-dir 'output/resnet50/bs4/lr0.1'

echo "Training resnet50_bs4_lr0.01"
python tools/train.py \
	--config 'configs/resnet/resnet50/lr0.01/resnet50_flowers_bs4.py' \
	--work-dir 'output/resnet50/bs4/lr0.01'

echo "Training resnet50_bs4_lr0.001"
python tools/train.py \
	--config 'configs/resnet/resnet50/lr0.001/resnet50_flowers_bs4.py' \
	--work-dir 'output/resnet50/bs4/lr0.001'

echo "Training resnet50_bs16_lr0.1"
python tools/train.py \
	--config 'configs/resnet/resnet50/lr0.1/resnet50_flowers_bs16.py' \
	--work-dir 'output/resnet50/bs16/lr0.1'

echo "Training resnet50_bs16_lr0.01"
python tools/train.py \
	--config 'configs/resnet/resnet50/lr0.01/resnet50_flowers_bs16.py' \
	--work-dir 'output/resnet50/bs16/lr0.01'

echo "Training resnet50_bs16_lr0.001"
python tools/train.py \
	--config 'configs/resnet/resnet50/lr0.001/resnet50_flowers_bs16.py' \
	--work-dir 'output/resnet50/bs16/lr0.001'

echo "Training resnet50_bs64_lr0.1"
python tools/train.py \
	--config 'configs/resnet/resnet50/lr0.1/resnet50_flowers_bs64.py' \
	--work-dir 'output/resnet50/bs64/lr0.1'

echo "Training resnet50_bs64_lr0.01"
python tools/train.py \
	--config 'configs/resnet/resnet50/lr0.01/resnet50_flowers_bs64.py' \
	--work-dir 'output/resnet50/bs64/lr0.01'

echo "Training resnet50_bs64_lr0.001"
python tools/train.py \
	--config 'configs/resnet/resnet50/lr0.001/resnet50_flowers_bs64.py' \
	--work-dir 'output/resnet50/bs64/lr0.001'




