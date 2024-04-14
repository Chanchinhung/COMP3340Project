#!/bin/bash
echo "Testing swin_transformer_base_224_bs4_lr0.01"
python tools/test.py \
    --config 'configs/swin_transformer/base_224_no_StochasticDepth/lr0.01/swin_base_224_lr0.01_bs4.py' \
    --checkpoint 'output/swin_transformer_no_StochasticDepth/bs4/lr0.01/epoch_200.pth' \
    --out 'output/swin_transformer_no_StochasticDepth/bs4/lr0.01/test.json' \
    --metrics 'accuracy'

echo "Testing swin_transformer_base_224_bs4_lr0.001"
python tools/test.py \
    --config 'configs/swin_transformer/base_224_no_StochasticDepth/lr0.001/swin_base_224_lr0.001_bs4.py' \
    --checkpoint 'output/swin_transformer_no_StochasticDepth/bs4/lr0.001/epoch_200.pth' \
    --out 'output/swin_transformer_no_StochasticDepth/bs4/lr0.001/test.json' \
    --metrics 'accuracy'

echo "Testing swin_transformer_base_224_bs4_lr0.0001"
python tools/test.py \
    --config 'configs/swin_transformer/base_224_no_StochasticDepth/lr0.0001/swin_base_224_lr0.0001_bs4.py' \
    --checkpoint 'output/swin_transformer_no_StochasticDepth/bs4/lr0.0001/epoch_200.pth' \
    --out 'output/swin_transformer_no_StochasticDepth/bs4/lr0.0001/test.json' \
    --metrics 'accuracy'

echo "Testing swin_transformer_base_224_bs16_lr0.01"
python tools/test.py \
    --config 'configs/swin_transformer/base_224_no_StochasticDepth/lr0.01/swin_base_224_lr0.01_bs16.py' \
    --checkpoint 'output/swin_transformer_no_StochasticDepth/bs16/lr0.01/epoch_200.pth' \
    --out 'output/swin_transformer_no_StochasticDepth/bs16/lr0.01/test.json' \
    --metrics 'accuracy'

echo "Testing swin_transformer_base_224_bs16_lr0.001"
python tools/test.py \
    --config 'configs/swin_transformer/base_224_no_StochasticDepth/lr0.001/swin_base_224_lr0.001_bs16.py' \
    --checkpoint 'output/swin_transformer_no_StochasticDepth/bs16/lr0.001/epoch_200.pth' \
    --out 'output/swin_transformer_no_StochasticDepth/bs16/lr0.001/test.json' \
    --metrics 'accuracy'

echo "Testing swin_transformer_base_224_bs16_lr0.0001"
python tools/test.py \
    --config 'configs/swin_transformer/base_224_no_StochasticDepth/lr0.0001/swin_base_224_lr0.0001_bs16.py' \
    --checkpoint 'output/swin_transformer_no_StochasticDepth/bs16/lr0.0001/epoch_200.pth' \
    --out 'output/swin_transformer_no_StochasticDepth/bs16/lr0.0001/test.json' \
    --metrics 'accuracy'

echo "Testing swin_transformer_base_224_bs32_lr0.01"
python tools/test.py \
    --config 'configs/swin_transformer/base_224_no_StochasticDepth/lr0.01/swin_base_224_lr0.01_bs32.py' \
    --checkpoint 'output/swin_transformer_no_StochasticDepth/bs32/lr0.01/epoch_200.pth' \
    --out 'output/swin_transformer_no_StochasticDepth/bs32/lr0.01/test.json' \
    --metrics 'accuracy'

echo "Testing swin_transformer_base_224_bs32_lr0.001"
python tools/test.py \
    --config 'configs/swin_transformer/base_224_no_StochasticDepth/lr0.001/swin_base_224_lr0.001_bs32.py' \
    --checkpoint 'output/swin_transformer_no_StochasticDepth/bs32/lr0.001/epoch_200.pth' \
    --out 'output/swin_transformer_no_StochasticDepth/bs32/lr0.001/test.json' \
    --metrics 'accuracy'

echo "Testing swin_transformer_base_224_bs32_lr0.0001"
python tools/test.py \
    --config 'configs/swin_transformer/base_224_no_StochasticDepth/lr0.0001/swin_base_224_lr0.0001_bs32.py' \
    --checkpoint 'output/swin_transformer_no_StochasticDepth/bs32/lr0.0001/epoch_200.pth' \
    --out 'output/swin_transformer_no_StochasticDepth/bs32/lr0.0001/test.json' \
    --metrics 'accuracy'