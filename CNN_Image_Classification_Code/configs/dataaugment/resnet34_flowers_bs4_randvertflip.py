_base_ = [
    '../_base_/models/resnet34_flowers.py','../_base_/datasets/dataaugment/flowers_bs4_randvertflip.py',
    '../_base_/schedules/resnet34/lr0.1/flowers_bs32.py', '../_base_/default_runtime.py'
]
