_base_ = [
        '../../_base_/models/inception_v3_flowers.py', 
        '../../_base_/datasets/flowers_bs4.py',
        '../../_base_/schedules/inception_v3/lr0.01/flowers_bs32.py', 
        '../../_base_/default_runtime.py' ]