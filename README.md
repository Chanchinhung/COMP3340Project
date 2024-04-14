# COMP3340

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

To train an Resnet34 model, for example, with batch size 4 and learning rate 0.1:
`python tools/train.py \
	--config 'configs/resnet/resnet34/lr0.1/resnet34_flowers_bs4.py' \
	--work-dir 'output/resnet34/bs4/lr0.1'`

To test an Resnet34 model,
`python tools/test.py \
    --config 'configs/resnet/resnet34/lr0.1/resnet34_flowers_bs4.py' \
    --checkpoint 'output/resnet34/bs4/lr0.1/latest.pth' \
    --out 'output/resnet34/bs4/lr0.1/test.json' \
    --metrics 'accuracy'`

To train and test all Resnet34 models,
`./tools/train_resnet34.sh`
`./tools/test_resnet34.sh`

To train an Swin Transformer model, for example, with batch size 4 and learning rate 0.01:
`python tools/train.py \
	--config 'configs/swin_transformer/base_224_no_StochasticDepth/lr0.01/swin_base_224_lr0.01_bs4.py' \
	--work-dir 'output/swin_transformer_no_StochasticDepth/bs4/lr0.01'`

To test an Swin Transformer model,
`python tools/test.py \
    --config 'configs/swin_transformer/base_224_no_StochasticDepth/lr0.01/swin_base_224_lr0.01_bs4.py' \
    --checkpoint 'output/swin_transformer_no_StochasticDepth/bs4/lr0.01/epoch_200.pth' \
    --out 'output/swin_transformer_no_StochasticDepth/bs4/lr0.01/test.json' \
    --metrics 'accuracy'`

To train and test all Swin Transformer models,
`./tools/train_swin.sh`
`./tools/test_swin.sh`

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

 


To plot the validation accuracy vs number of epoch,
`python ploting_validation_accuracy.py \
    path/of/model1.log.json [Optional: path/of/model2.log.json] \
    'legend of model 1' 'Optional: legend of model 2' \
    path/of/output/file`

In this project we first trained 5 sets of baseline models (ResNet18, 34, 50, and VGG 16, 19) with different batch size (4, 16, 64) and learning rate (10^-1, 10^-2, 10^-3) in order to invsetigate the effect of those 2 hyperparameters on models' performance, and identify the best set of hyperparameters for future improvements. 

To train those models, use the command ''(please inserst command here)

It can be assumed that from now on, all command are executed in the terminal under the directory 'COMP3340Project/CNN_Image_Classification_Code' unless otherwise specified.

Then, from the best model, we implemented 4 data augmentation technique. Color jittering aims to reduce the , random vertical flipping with 0.5 probabillity aims to , random rotation by 15 degrees aims to , and random rescaling aims to . We also trained another model where all the above augmentations are applied.

To train those models, (insert cmd)
To test those models, use the command ''(insert)
