_base_ = [
    '../../../_base_/models/vgg16_flowers.py', '../../../_base_/datasets/flowers_bs4.py',
    '../../../_base_/schedules/vgg16/lr0.01/flowers_bs32GradientClipping.py', '../../../_base_/default_runtime.py'
]
