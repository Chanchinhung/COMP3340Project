_base_ = [
    '../../../_base_/models/swin_transformer/base_224_flowers_no_StochasticDepth.py',
    '../../../_base_/datasets/flowers_bs16.py',
    '../../../_base_/schedules/swin_transformer/lr0.01/flowers_bs32.py',
    '../../../_base_/default_runtime.py'
]
