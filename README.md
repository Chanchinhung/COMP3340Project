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

To plot the validation accuracy vs number of epoch,
`python ploting_validation_accuracy.py \
    path/of/model1.log.json [Optional: path/of/model2.log.json] \
    'legend of model 1' 'Optional: legend of model 2' \
    path/of/output/file`
