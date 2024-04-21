# COMP3340 Project Repository

## Overview
In this project we first trained 5 sets of baseline models (ResNet18, 34, 50, and VGG 16, 19) with different batch size (4, 16, 64) and learning rate (10^-1, 10^-2, 10^-3) in order to invsetigate the effect of those 2 hyperparameters on models' performance, and identify the best set of hyperparameters for future improvements. 

It can be assumed that from now on, all command are executed in the terminal under the directory 'COMP3340Project/CNN_Image_Classification_Code' unless otherwise specified.

## Environment Installation
Use the following commands to configure the required environment:

conda create -n mmcls python=3.7 -y
conda activate mmcls
conda install pytorch==1.7.1 torchvision==0.8.2 torchaudio==0.7.2 cudatoolkit=10.1 -c pytorch
pip install mmcv==1.5.0
pip install mmcv-full==1.5.0
cd CNN_Image_Classification_Code
pip install -e .
pip install yapf==0.40.1

## Baseline Models
### ResNet
To train an ResNet model, for example, ResNet 34 with batch size 4 and learning rate 0.1:
`python tools/train.py \
	--config 'configs/resnet/resnet34/lr0.1/resnet34_flowers_bs4.py' \
	--work-dir 'output/resnet34/bs4/lr0.1'`

To test the above model,
`python tools/test.py \
    --config 'configs/resnet/resnet34/lr0.1/resnet34_flowers_bs4.py' \
    --checkpoint 'output/resnet34/bs4/lr0.1/latest.pth' \
    --out 'output/resnet34/bs4/lr0.1/test.json' \
    --metrics 'accuracy'`

To train and test all ResNet34 models,
`./tools/train_resnet34.sh`
`./tools/test_resnet34.sh`

To train and test all ResNet18 models,
`./tools/train_resnet18.sh`
`./tools/test_resnet18.sh`

To train and test all ResNet50 models,
`./tools/train_resnet50.sh`
`./tools/test_resnet50.sh`

To train and test all VGG16 models,
`./tools/train_vgg16.sh`
`./tools/test_vgg16.sh`

To train and test all VGG19 models,
`./tools/train_vgg19.sh`
`./tools/test_vgg19.sh`

To train and test all VGG19 models,
`./tools/train_vit.sh`
`./tools/test_vit.sh`

The expected results will be displayed in terminal and saved in log files when running the shell scripts.

## Advanced Models
## Data Augmentation Techiques
Then, from the best baseline model (ResNet34 with batch size=4, learning rate=0.1), we implemented 4 data augmentation technique. Random color jittering aims to negate the effect of brightness, contrast, saturation model training; random vertical flipping with 0.5 probabillity aims to negate the effect of orientation of images; similarly, random rotation by 15 degrees aims to negate the effect of orientation of images; and random rescaling aims to negate the effect of image scale. We also trained another model where all the above augmentations are applied.

To train and test all the Data Augmentation models,
`./tools/train_dataaugmentation.sh`
`./tools/test_dataaugmentation.sh`

### Inception Models
Our project trained Inception models with batch sizes 4, 16 and 64 and learning rates 10^-1, 10^-2, 10^-3 and 10^-4.
To train an Inception model, for example, with batch size 4 and learning rate 0.1:
`python tools/train.py \
	--config 'configs/inception/inception_v3/inceptionv3_flowers_bs4_lr0.1.py' \
	--work-dir 'output/inception_v3/inception_v3_flowers_bs4_lr0.1'`

To test an Inception model,
`python tools/test.py \
    --config 'configs/inception/inception_v3/inceptionv3_flowers_bs4_lr0.1.py' \
    --checkpoint 'output/inception_v3/inception_v3_flowers_bs4_lr0.1/latest.pth' \
    --out 'output/inception_v3/inception_v3_flowers_bs4_lr0.1/test.json' \
    --metrics 'accuracy'`

To train and test all Inception models,
`./tools/train_inception.sh`
`./tools/test_inception`

### Swin Transformer Models
To train an Swin Transformer model (base224), for example, with batch size 4 and learning rate 0.01:
`python tools/train.py \
	--config 'configs/swin_transformer/base_224_no_StochasticDepth/lr0.01/swin_base_224_lr0.01_bs4.py' \
	--work-dir 'output/swin_transformer_no_StochasticDepth/bs4/lr0.01'`

To test an Swin Transformer model (base224),
`python tools/test.py \
    --config 'configs/swin_transformer/base_224_no_StochasticDepth/lr0.01/swin_base_224_lr0.01_bs4.py' \
    --checkpoint 'output/swin_transformer_no_StochasticDepth/bs4/lr0.01/epoch_200.pth' \
    --out 'output/swin_transformer_no_StochasticDepth/bs4/lr0.01/test.json' \
    --metrics 'accuracy'`

To train and test all Swin Transformer models (base224),
`./tools/train_swin.sh`
`./tools/test_swin.sh`

### Vision Transformer (ViT) Models
Due to memory and computational power limitations, our project only trained ViT models with at patch size 16 and img size of 224, and testing models after resizing to 384,
models are trained at learning rates 10^-2, 10^-3, 10^-4, 10^-5, 3.125e-5.
To train an ViT model, for example, with learning rate 0.00001:
`python tools/train.py --config 'configs/vision_transformer/lr0.00001/vit_base_patch16_224_fromscratch_flowers.py' --work-dir  'output/vit/lr0.00001/vit_base_patch16_224_fromscratch_flowers'`

To test a ViT model:
`python tools/test.py \
    --config 'configs/vision_transformer/lr0.00001/vit_base_patch16_224_fromscratch_flowers.py' \
    --checkpoint 'output/vit/lr0.00001/vit_base_patch16_224_fromscratch_flowers/latest.pth' \
    --out 'output/vit/lr0.00001/vit_base_patch16_224_fromscratch_flowers/test.json' \
    --metrics 'accuracy'`

## Improvement Methods
### Gradient Clipping
We have also investigate the impact of gradient clipping on vgg16 bs4 lr0.01, 
to train that:
`python tools/train.py \
	--config 'configs/vgg/vgg16/lr0.01/vgg16_flowers_bs4GradientClipping.py' \
	--work-dir 'output/vgg16/bs4/lr0.01GradientClipping'`
 
to test that:
`python tools/test.py \
    --config 'configs/vgg/vgg16/lr0.01/vgg16_flowers_bs4GradientClipping.py' \
    --checkpoint 'output/vgg16/bs4/lr0.01GradientClipping/latest.pth' \
    --out 'output/vgg16/bs4/lr0.01GradientClipping/test.json' \
    --metrics 'accuracy'`

## Plotting Graphs
To plot the validation accuracy vs number of epoch,
`python ploting_validation_accuracy.py \
    path/of/model1.log.json [Optional: path/of/model2.log.json] \
    'legend of model 1' 'Optional: legend of model 2' \
    path/of/output/file`
