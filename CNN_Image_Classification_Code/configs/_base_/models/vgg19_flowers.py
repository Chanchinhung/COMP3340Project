# model settings for VGG-19 
model = dict(
    type='ImageClassifier',
    backbone=dict(
        type='VGG', depth=19, norm_cfg=dict(type='BN',requires_grad=True), num_classes=17),
    neck=None,
    head=dict(
        type='ClsHead',
        loss=dict(type='CrossEntropyLoss', loss_weight=1.0),
    ))
