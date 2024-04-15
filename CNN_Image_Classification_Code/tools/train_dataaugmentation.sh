#!/bin/bash


echo "Training resnet34_bs4_lr0.1 baseline model with random color jittering applied"
python tools/train.py \
	--config 'configs/dataaugment/resnet34_flowers_bs4_colorjitter.py' \
	--work-dir 'output/dataaugment/resnet34_flowers_bs4_colorjitter'

echo "Training resnet34_bs4_lr0.1 baseline model with random rescaling applied"
python tools/train.py \
	--config 'configs/dataaugment/resnet34_flowers_bs4_randrescale.py' \
	--work-dir 'output/dataaugment/resnet34_flowers_bs4_randrescale'

echo "Training resnet34_bs4_lr0.1 baseline model with random rotation of 15 degrees applied"
python tools/train.py \
	--config 'configs/dataaugment/resnet34_flowers_bs4_randrotate.py' \
	--work-dir 'output/dataaugment/resnet34_flowers_bs4_randrotate'

echo "Training resnet34_bs4_lr0.1 baseline model with random vertical flipping applied"
python tools/train.py \
	--config 'configs/dataaugment/resnet34_flowers_bs4_randvertflip.py' \
	--work-dir 'output/dataaugment/resnet34_flowers_bs4_randvertflip'

echo "Training resnet34_bs4_lr0.1 baseline model with all the above techniques applied"
python tools/train.py \
	--config 'configs/dataaugment/resnet34_flowers_bs4_alltech.py' \
	--work-dir 'output/dataaugment/resnet34_flowers_bs4_alltech'