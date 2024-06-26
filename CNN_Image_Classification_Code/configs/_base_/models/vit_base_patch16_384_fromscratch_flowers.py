model = dict(
    type='ImageClassifier',
    backbone=dict(
        return_tuple=False,
        type='VisionTransformer',
        num_layers=12,
        embed_dim=768,
        num_heads=12,
        img_size=384,
        patch_size=16,
        in_channels=3,
        feedforward_channels=3072,
        drop_rate=0.1,
        attn_drop_rate=0.
        ),
    neck=None,
    head=dict(
        type='VisionTransformerClsHead',
        num_classes=17,  # modify
        in_channels=768,
        hidden_dim=3072,
        loss=dict(type='LabelSmoothLoss', label_smooth_val=0.1),
        topk=(1, 5),
    ),
    train_cfg=dict(
        augments=dict(type='BatchMixup', alpha=0.2, num_classes=17,  # modify
                      prob=1.))
)