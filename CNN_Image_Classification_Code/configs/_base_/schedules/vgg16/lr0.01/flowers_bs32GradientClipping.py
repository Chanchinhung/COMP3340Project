# optimizer, modified from cifar10_bs128.py
optimizer = dict(type='SGD', lr=0.01, momentum=0.9, weight_decay=0.0001) #lr was 0.1
optimizer_config = dict(grad_clip=dict(max_norm=35, norm_type=2))
# learning policy
lr_config = dict(policy='step', step=[100, 150])
runner = dict(type='EpochBasedRunner', max_epochs=200)
