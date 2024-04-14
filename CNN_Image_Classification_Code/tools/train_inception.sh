!/bin/bash


echo "Training inception_v3_flowers_bs4_lr0.1"
python tools/train.py \
	--config 'configs/inception/inception_v3/inceptionv3_flowers_bs4_lr0.1.py' \
	--work-dir 'output/inception_v3/inception_v3_flowers_bs4_lr0.1'

echo "Training inception_v3_flowers_bs4_lr0.01"
python tools/train.py \
	--config 'configs/inception/inception_v3/inceptionv3_flowers_bs4_lr0.01.py' \
	--work-dir 'output/inception_v3/inception_v3_flowers_bs4_lr0.01'

echo "Training inception_v3_flowers_bs4_lr0.001"
python tools/train.py \
	--config 'configs/inception/inception_v3/inceptionv3_flowers_bs4_lr0.001.py' \
	--work-dir 'output/inception_v3/inception_v3_flowers_bs4_lr0.001'

echo "Training inception_v3_flowers_bs4_lr0.0001"
python tools/train.py \
	--config 'configs/inception/inception_v3/inceptionv3_flowers_bs4_lr0.0001.py' \
	--work-dir 'output/inception_v3/inception_v3_flowers_bs4_lr0.0001'

echo "Training inception_v3_flowers_bs16_lr0.1"
python tools/train.py \
	--config 'configs/inception/inception_v3/inceptionv3_flowers_bs16_lr0.1.py' \
	--work-dir 'output/inception_v3/inception_v3_flowers_bs16_lr0.1'

echo "Training inception_v3_flowers_bs16_lr0.01"
python tools/train.py \
	--config 'configs/inception/inception_v3/inceptionv3_flowers_bs16_lr0.01.py' \
	--work-dir 'output/inception_v3/inception_v3_flowers_bs16_lr0.01'

echo "Training inception_v3_flowers_bs16_lr0.001"
python tools/train.py \
	--config 'configs/inception/inception_v3/inceptionv3_flowers_bs16_lr0.001.py' \
	--work-dir 'output/inception_v3/inception_v3_flowers_bs16_lr0.001'

echo "Training inception_v3_flowers_bs16_lr0.0001"
python tools/train.py \
	--config 'configs/inception/inception_v3/inceptionv3_flowers_bs16_lr0.0001.py' \
	--work-dir 'output/inception_v3/inception_v3_flowers_bs16_lr0.0001'

echo "Training inception_v3_flowers_bs64_lr0.1"
python tools/train.py \
	--config 'configs/inception/inception_v3/inceptionv3_flowers_bs64_lr0.1.py' \
	--work-dir 'output/inception_v3/inception_v3_flowers_bs64_lr0.1'

echo "Training inception_v3_flowers_bs64_lr0.01"
python tools/train.py \
	--config 'configs/inception/inception_v3/inceptionv3_flowers_bs64_lr0.01.py' \
	--work-dir 'output/inception_v3/inception_v3_flowers_bs64_lr0.01'

echo "Training inception_v3_flowers_bs64_lr0.001"
python tools/train.py \
	--config 'configs/inception/inception_v3/inceptionv3_flowers_bs64_lr0.001.py' \
	--work-dir 'output/inception_v3/inception_v3_flowers_bs64_lr0.001'

echo "Training inception_v3_flowers_bs64_lr0.0001"
python tools/train.py \
	--config 'configs/inception/inception_v3/inceptionv3_flowers_bs64_lr0.0001.py' \
	--work-dir 'output/inception_v3/inception_v3_flowers_bs64_lr0.0001'
