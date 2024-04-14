model = dict(
    type='ImageClassifier',
    backbone=dict(
        return_tuple=False,
        type='VisionTransformer',
        num_layers=24,
        embed_dim=1024,
        num_heads=16,
        img_size=224,
        patch_size=16,
        in_channels=3,
        feedforward_channels=4096,
        drop_rate=0.1,
        attn_drop_rate=0.),
    neck=None,
    head=dict(
        type='VisionTransformerClsHead',
        num_classes=17,  # modify
        in_channels=1024,
        hidden_dim=4096,
        loss=dict(type='LabelSmoothLoss', label_smooth_val=0.1),
        topk=(1, 5),
    ),
    train_cfg=dict(
        augments=dict(type='BatchMixup', alpha=0.2, num_classes=17,  # modify
                      prob=1.))
)