#!/bin/bash


echo "Training swin_transformer_base_224_bs4_lr0.01"
python tools/train.py \
	--config 'configs/swin_transformer/base_224_no_StochasticDepth/lr0.01/swin_base_224_lr0.01_bs4.py' \
	--work-dir 'output/swin_transformer_no_StochasticDepth/bs4/lr0.01'

echo "Training swin_transformer_base_224_bs4_lr0.001"
python tools/train.py \
	--config 'configs/swin_transformer/base_224_no_StochasticDepth/lr0.001/swin_base_224_lr0.001_bs4.py' \
	--work-dir 'output/swin_transformer_no_StochasticDepth/bs4/lr0.001'

echo "Training swin_transformer_base_224_bs4_lr0.0001"
python tools/train.py \
	--config 'configs/swin_transformer/base_224_no_StochasticDepth/lr0.0001/swin_base_224_lr0.0001_bs4.py' \
	--work-dir 'output/swin_transformer_no_StochasticDepth/bs4/lr0.0001'

echo "Training swin_transformer_base_224_bs16_lr0.01"
python tools/train.py \
	--config 'configs/swin_transformer/base_224_no_StochasticDepth/lr0.01/swin_base_224_lr0.01_bs16.py' \
	--work-dir 'output/swin_transformer_no_StochasticDepth/bs16/lr0.01'

echo "Training swin_transformer_base_224_bs16_lr0.001"
python tools/train.py \
	--config 'configs/swin_transformer/base_224_no_StochasticDepth/lr0.001/swin_base_224_lr0.001_bs16.py' \
	--work-dir 'output/swin_transformer_no_StochasticDepth/bs16/lr0.001'

echo "Training swin_transformer_base_224_bs4_lr0.0001"
python tools/train.py \
	--config 'configs/swin_transformer/base_224_no_StochasticDepth/lr0.0001/swin_base_224_lr0.0001_bs16.py' \
	--work-dir 'output/swin_transformer_no_StochasticDepth/bs16/lr0.0001'

echo "Training swin_transformer_base_224_bs32_lr0.01"
python tools/train.py \
	--config 'configs/swin_transformer/base_224_no_StochasticDepth/lr0.01/swin_base_224_lr0.01_bs32.py' \
	--work-dir 'output/swin_transformer_no_StochasticDepth/bs32/lr0.01'

echo "Training swin_transformer_base_224_bs32_lr0.001"
python tools/train.py \
	--config 'configs/swin_transformer/base_224_no_StochasticDepth/lr0.001/swin_base_224_lr0.001_bs32.py' \
	--work-dir 'output/swin_transformer_no_StochasticDepth/bs32/lr0.001'

echo "Training swin_transformer_base_224_bs32_lr0.0001"
python tools/train.py \
	--config 'configs/swin_transformer/base_224_no_StochasticDepth/lr0.0001/swin_base_224_lr0.0001_bs32.py' \
	--work-dir 'output/swin_transformer_no_StochasticDepth/bs32/lr0.0001'
