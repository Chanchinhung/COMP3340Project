#!/bin/bash


echo "Training vgg19_bs4_lr0.01"
python tools/train.py \
	--config 'configs/vgg/vgg19/vgg19_flowers_bs4_lr0.01.py' \
	--work-dir 'output/vgg19/vgg19_flowers_bs4_lr0.01'

echo "Training vgg19_bs4_lr0.001"
python tools/train.py \
	--config 'configs/vgg/vgg19/vgg19_flowers_bs4_lr0.001.py' \
	--work-dir 'output/vgg19/vgg19_flowers_bs4_lr0.001'

echo "Training vgg19_bs4_lr0.0001"
python tools/train.py \
	--config 'configs/vgg/vgg19/vgg19_flowers_bs4_lr0.0001.py' \
	--work-dir 'output/vgg19/vgg19_flowers_bs4_lr0.0001'

echo "Training vgg19_bs16_lr0.01"
python tools/train.py \
	--config 'configs/vgg/vgg19/vgg19_flowers_bs16_lr0.01.py' \
	--work-dir 'output/vgg19/vgg19_flowers_bs16_lr0.01'

echo "Training vgg19_bs16_lr0.001"
python tools/train.py \
	--config 'configs/vgg/vgg19/vgg19_flowers_bs16_lr0.001.py' \
	--work-dir 'output/vgg19/vgg19_flowers_bs16_lr0.001'

echo "Training vgg19_bs4_lr0.0001"
python tools/train.py 
	--config 'configs/vgg/vgg19/vgg19_flowers_bs16_lr0.0001.py' \
	--work-dir 'output/vgg19/vgg19_flowers_bs16_lr0.0001'