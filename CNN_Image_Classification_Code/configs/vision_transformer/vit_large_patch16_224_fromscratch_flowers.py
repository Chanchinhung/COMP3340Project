_base_ = [
    '../_base_/models/vit_large_patch16_224_fromscratch_flowers.py',
    '../_base_/datasets/flowers_bs32.py',
    '../_base_/schedules/vit/flowers_bs32.py',
    '../_base_/default_runtime.py'
]