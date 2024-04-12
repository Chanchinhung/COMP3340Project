_base_ = [
    '../../_base_/models/vit_base_patch16_224_fromscratch_flowers.py',
    '../../_base_/datasets/flowers_bs32.py',
    '../../_base_/schedules/vit/lr0.001/flowers_bs32_lr0.001.py',
    '../../_base_/default_runtime.py'
]