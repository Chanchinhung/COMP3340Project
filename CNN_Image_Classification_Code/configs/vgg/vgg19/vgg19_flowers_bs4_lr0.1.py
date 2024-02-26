_base_ = [
        '../../_base_/models/vgg19_flowers.py', 
        '../../_base_/datasets/flowers_bs4_vgg.py',
        '../../_base_/schedules/vgg19/lr0.1/flowers_bs32.py', 
        '../../_base_/default_runtime.py' ]