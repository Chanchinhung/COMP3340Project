_base_ = [
    '../../../_base_/models/swin_transformer/base_224_flowers.py',
    '../../../_base_/datasets/flowers_bs4.py',
    '../../../_base_/schedules/swin_transformer/lr0.001/flowers_bs32.py',
    '../../../_base_/default_runtime.py'
]
