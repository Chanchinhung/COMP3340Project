_base_ = [
    '../_base_/models/resnet50_flowers.py','../_base_/datasets/dataaugment/flowers_bs16_colorjitter.py',
    '../_base_/schedules/resnet50/resnet50/lr0.1/flowers_bs32.py', '../_base_/default_runtime.py'
]
