_base_ = [
    '../_base_/models/vit_base_patch16_384_fromscratch_flowers.py',
    '../_base_/datasets/flowers_bs16_pil_resize.py',
    '../_base_/schedules/vit/flowers_bs16.py',
    '../_base_/default_runtime.py'
]

img_norm_cfg = dict(
    mean=[127.5, 127.5, 127.5], std=[127.5, 127.5, 127.5], to_rgb=True)

test_pipeline = [
    dict(type='LoadImageFromFile'),
    dict(type='Resize', size=(384, -1), backend='pillow'),
    dict(type='CenterCrop', crop_size=384),
    dict(type='Normalize', **img_norm_cfg),
    dict(type='ImageToTensor', keys=['img']),
    dict(type='Collect', keys=['img'])
]

data = dict(test=dict(pipeline=test_pipeline))
