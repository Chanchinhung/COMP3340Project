# COMP3340 Project Repository

## Overview
In this project we first trained 5 sets of baseline models (ResNet18, 34, 50, and VGG 16, 19) with different batch size (4, 16, 64) and learning rate (10^-1, 10^-2, 10^-3) in order to investigate the effect of those 2 hyperparameters on models' performance, and identify the best set of hyperparameters for future improvements. 

It can be assumed that from now on, all command are executed in the terminal under the directory 'COMP3340Project/CNN_Image_Classification_Code' unless otherwise specified.

## Environment Installation
Use the following commands to configure the required environment:

conda create -n mmcls python=3.7 -y
conda activate mmcls
conda install pytorch==1.7.1 torchvision==0.8.2 torchaudio==0.7.2 cudatoolkit=10.1 -c pytorch
pip install mmcv==1.5.0
python -m pip install paddlepaddle-gpu==2.5.2 -i https://mirror.baidu.com/pypi/simple
pip install mmcv-full==1.5.0
cd CNN_Image_Classification_Code
pip install -e .
pip install yapf==0.40.1

## System Info
sys.platform: linux
Python: 3.7.16 (default, Jan 17 2023, 22:20:44) [GCC 11.2.0]
CUDA available: True
GPU 0: NVIDIA GeForce RTX 2080 Ti
CUDA_HOME: /usr/local/cuda
NVCC: Cuda compilation tools, release 11.8, V11.8.89
GCC: gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
PyTorch: 1.7.1
PyTorch compiling details: PyTorch built with:
  - GCC 7.3
  - C++ Version: 201402
  - Intel(R) oneAPI Math Kernel Library Version 2021.4-Product Build 20210904 for Intel(R) 64 architecture applications
  - Intel(R) MKL-DNN v1.6.0 (Git Hash 5ef631a030a6f73131c77892041042805a06064f)
  - OpenMP 201511 (a.k.a. OpenMP 4.5)
  - NNPACK is enabled
  - CPU capability usage: AVX2
  - CUDA Runtime 10.1
  - NVCC architecture flags: -gencode;arch=compute_37,code=sm_37;-gencode;arch=compute_50,code=sm_50;-gencode;arch=compute_60,code=sm_60;-gencode;arch=compute_61,code=sm_61;-gencode;arch=compute_70,code=sm_70;-gencode;arch=compute_75,code=sm_75;-gencode;arch=compute_37,code=compute_37
  - CuDNN 7.6.3
  - Magma 2.5.2
  - Build settings: BLAS=MKL, BUILD_TYPE=Release, CXX_FLAGS= -Wno-deprecated -fvisibility-inlines-hidden -DUSE_PTHREADPOOL -fopenmp -DNDEBUG -DUSE_FBGEMM -DUSE_QNNPACK -DUSE_PYTORCH_QNNPACK -DUSE_XNNPACK -DUSE_VULKAN_WRAPPER -O2 -fPIC -Wno-narrowing -Wall -Wextra -Werror=return-type -Wno-missing-field-initializers -Wno-type-limits -Wno-array-bounds -Wno-unknown-pragmas -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wno-unused-function -Wno-unused-result -Wno-unused-local-typedefs -Wno-strict-overflow -Wno-strict-aliasing -Wno-error=deprecated-declarations -Wno-stringop-overflow -Wno-psabi -Wno-error=pedantic -Wno-error=redundant-decls -Wno-error=old-style-cast -fdiagnostics-color=always -faligned-new -Wno-unused-but-set-variable -Wno-maybe-uninitialized -fno-math-errno -fno-trapping-math -Werror=format -Wno-stringop-overflow, PERF_WITH_AVX=1, PERF_WITH_AVX2=1, PERF_WITH_AVX512=1, USE_CUDA=ON, USE_EXCEPTION_PTR=1, USE_GFLAGS=OFF, USE_GLOG=OFF, USE_MKL=ON, USE_MKLDNN=ON, USE_MPI=OFF, USE_NCCL=ON, USE_NNPACK=ON, USE_OPENMP=ON, 

TorchVision: 0.8.2
OpenCV: 4.9.0
MMCV: 1.5.0
MMCV Compiler: GCC 11.4
MMCV CUDA Compiler: 11.8
MMClassification: 0.15.0+35d7618

## Baseline Models
### ResNet and VGG
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

The expected results will be displayed in terminal and saved in log files when running the shell scripts.

## Advanced Models
### Data Augmentation Techiques
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

### DCNv2 Models
To train a DCNv2-integrated Resnet50 model, first add desnet_mem.py to the 'data' directory, then run `cd data`. 
After that run `python desnet_mem.py` and you will be prompted to enter half of batch size and learning rate. After entering the values, the training will start automatically.

To test a DCNv2-integrated Resnet50 model,
run `python desnet_test.py`, then enter the testing batch size. After that, enter the model batch size and learning rate to specify the target model. 

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
For this command to work properly, this should be executed in the terminal under the directory 'COMP3340Project/CNN_Image_Classification_Code/output'

To plot the validation accuracy vs number of epoch,

`python ploting_validation_accuracy.py \
    --json 'path/of/model1.log.json' [Optional: 'path/of/model{2..n}.log.json'] \
    --legend 'legend of model 1' [Optional: 'legend of model {2..n}'] \
    --output 'path/of/output/file'`

Eg. 
`python ploting_validation_accuracy.py \
    --json 'resnet34/bs4/lr0.1/20240225_234858.log.json' 'resnet34/bs16/lr0.1/20240226_005436.log.json' 'resnet34/bs64/lr0.1/20240226_013725.log.json’ \
    --legend 'bs4' 'bs16' 'bs64' \
    --output 'resnet34_lr0.1.pdf'`

If you don't add '.pdf' in --output then it will be a PNG file

Note that 1. maximum number of json files and legends are 20 respectively 2. Number of json files and legends must match 3. All --json --legend --output must be provided

## Expected Testing Accuracies
All the expected testing accuracies are in 'COMP3340 Expected Testing Accuracy of All models - Sheet1.pdf'
