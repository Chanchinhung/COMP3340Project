#!/bin/bash
echo "Testing inception_v3_flowers_bs4_lr0.1"
python tools/test.py \
    --config 'configs/inception/inception_v3/inceptionv3_flowers_bs4_lr0.1.py' \
    --checkpoint 'output/inception_v3/inception_v3_flowers_bs4_lr0.1/latest.pth' \
    --out 'output/inception_v3/inception_v3_flowers_bs4_lr0.1/test.json' \
    --metrics 'accuracy'

echo "Testing inception_v3_flowers_bs4_lr0.01"
python tools/test.py \
    --config 'configs/inception/inception_v3/inceptionv3_flowers_bs4_lr0.01.py' \
    --checkpoint 'output/inception_v3/inception_v3_flowers_bs4_lr0.01/latest.pth' \
    --out 'output/inception_v3/inception_v3_flowers_bs4_lr0.01/test.json' \
    --metrics 'accuracy'

echo "Testing inception_v3_flowers_bs4_lr0.001"
python tools/test.py \
    --config 'configs/inception/inception_v3/inceptionv3_flowers_bs4_lr0.001.py' \
    --checkpoint 'output/inception_v3/inception_v3_flowers_bs4_lr0.001/latest.pth' \
    --out 'output/inception_v3/inception_v3_flowers_bs4_lr0.001/test.json' \
    --metrics 'accuracy'

echo "Testing inception_v3_flowers_bs4_lr0.0001"
python tools/test.py \
    --config 'configs/inception/inception_v3/inceptionv3_flowers_bs4_lr0.0001.py' \
    --checkpoint 'output/inception_v3/inception_v3_flowers_bs4_lr0.0001/latest.pth' \
    --out 'output/inception_v3/inception_v3_flowers_bs4_lr0.0001/test.json' \
    --metrics 'accuracy'

echo "Testing inception_v3_flowers_bs16_lr0.1"
python tools/test.py \
    --config 'configs/inception/inception_v3/inceptionv3_flowers_bs16_lr0.1.py' \
    --checkpoint 'output/inception_v3/inception_v3_flowers_bs16_lr0.1/latest.pth' \
    --out 'output/inception_v3/inception_v3_flowers_bs16_lr0.1/test.json' \
    --metrics 'accuracy'

echo "Testing inception_v3_flowers_b16_lr0.01"
python tools/test.py \
    --config 'configs/inception/inception_v3/inceptionv3_flowers_bs16_lr0.01.py' \
    --checkpoint 'output/inception_v3/inception_v3_flowers_bs16_lr0.01/latest.pth' \
    --out 'output/inception_v3/inception_v3_flowers_bs16_lr0.01/test.json' \
    --metrics 'accuracy'

echo "Testing inception_v3_flowers_bs16_lr0.001"
python tools/test.py \
    --config 'configs/inception/inception_v3/inceptionv3_flowers_bs16_lr0.001.py' \
    --checkpoint 'output/inception_v3/inception_v3_flowers_bs16_lr0.001/latest.pth' \
    --out 'output/inception_v3/inception_v3_flowers_bs16_lr0.001/test.json' \
    --metrics 'accuracy'

echo "Testing inception_v3_flowers_bs16_lr0.0001"
python tools/test.py \
    --config 'configs/inception/inception_v3/inceptionv3_flowers_bs16_lr0.0001.py' \
    --checkpoint 'output/inception_v3/inception_v3_flowers_bs16_lr0.0001/latest.pth' \
    --out 'output/inception_v3/inception_v3_flowers_bs16_lr0.0001/test.json' \
    --metrics 'accuracy'

echo "Testing inception_v3_flowers_bs64_lr0.1"
python tools/test.py \
    --config 'configs/inception/inception_v3/inceptionv3_flowers_bs64_lr0.1.py' \
    --checkpoint 'output/inception_v3/inception_v3_flowers_bs64_lr0.1/latest.pth' \
    --out 'output/inception_v3/inception_v3_flowers_bs64_lr0.1/test.json' \
    --metrics 'accuracy'

echo "Testing inception_v3_flowers_bs64_lr0.01"
python tools/test.py \
    --config 'configs/inception/inception_v3/inceptionv3_flowers_bs64_lr0.01.py' \
    --checkpoint 'output/inception_v3/inception_v3_flowers_bs64_lr0.01/latest.pth' \
    --out 'output/inception_v3/inception_v3_flowers_bs64_lr0.01/test.json' \
    --metrics 'accuracy'

echo "Testing inception_v3_flowers_bs64_lr0.001"
python tools/test.py \
    --config 'configs/inception/inception_v3/inceptionv3_flowers_bs64_lr0.001.py' \
    --checkpoint 'output/inception_v3/inception_v3_flowers_bs64_lr0.001/latest.pth' \
    --out 'output/inception_v3/inception_v3_flowers_bs64_lr0.001/test.json' \
    --metrics 'accuracy'

echo "Testing inception_v3_flowers_bs64_lr0.0001"
python tools/test.py \
    --config 'configs/inception/inception_v3/inceptionv3_flowers_bs64_lr0.0001.py' \
    --checkpoint 'output/inception_v3/inception_v3_flowers_bs64_lr0.0001/latest.pth' \
    --out 'output/inception_v3/inception_v3_flowers_bs64_lr0.0001/test.json' \
    --metrics 'accuracy'
