_base_ = [
    '../_base_/models/vit_base_patch32_384_finetune_flowers.py',
    '../_base_/datasets/flowers_bs32.py',
    '../_base_/schedules/vit/flowers_bs32.py',
    '../_base_/default_runtime.py'
]