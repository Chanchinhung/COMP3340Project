#!/bin/bash


echo "Training vgg16_bs4_lr0.1"
python tools/train.py \
	--config 'configs/vgg/vgg16/lr0.1/vgg16_flowers_bs4.py' \
	--work-dir 'output/vgg16/bs4/lr0.1'

echo "Training vgg16_bs4_lr0.01"
python tools/train.py \
	--config 'configs/vgg/vgg16/lr0.01/vgg16_flowers_bs4.py' \
	--work-dir 'output/vgg16/bs4/lr0.01'

echo "Training vgg16_bs4_lr0.001"
python tools/train.py \
	--config 'configs/vgg/vgg16/lr0.001/vgg16_flowers_bs4.py' \
	--work-dir 'output/vgg16/bs4/lr0.001'

echo "Training vgg16_bs16_lr0.1"
python tools/train.py \
	--config 'configs/vgg/vgg16/lr0.1/vgg16_flowers_bs16.py' \
	--work-dir 'output/vgg16/bs16/lr0.1'

echo "Training vgg16_bs16_lr0.01"
python tools/train.py \
	--config 'configs/vgg/vgg16/lr0.01/vgg16_flowers_bs16.py' \
	--work-dir 'output/vgg16/bs16/lr0.01'

echo "Training vgg16_bs16_lr0.001"
python tools/train.py \
	--config 'configs/vgg/vgg16/lr0.001/vgg16_flowers_bs16.py' \
	--work-dir 'output/vgg16/bs16/lr0.001'

echo "Training vgg16_bs64_lr0.1"
python tools/train.py \
	--config 'configs/vgg/vgg16/lr0.1/vgg16_flowers_bs64.py' \
	--work-dir 'output/vgg16/bs64/lr0.1'

echo "Training vgg16_bs64_lr0.01"
python tools/train.py \
	--config 'configs/vgg/vgg16/lr0.01/vgg16_flowers_bs64.py' \
	--work-dir 'output/vgg16/bs64/lr0.01'

echo "Training vgg16_bs64_lr0.001"
python tools/train.py \
	--config 'configs/vgg/vgg16/lr0.001/vgg16_flowers_bs64.py' \
	--work-dir 'output/vgg16/bs64/lr0.001'




