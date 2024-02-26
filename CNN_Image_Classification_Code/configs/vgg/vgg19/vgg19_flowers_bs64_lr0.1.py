_base_ = [
        'CNN_Image_Classification_Code/configs/_base_/models/vgg19_flowers.py', 
        'CNN_Image_Classification_Code/configs/_base_/datasets/flowers_bs64.py',
        'CNN_Image_Classification_Code/configs/_base_/schedules/vgg19/lr0.1/flowers_bs32.py', 
        'CNN_Image_Classification_Code/configs/_base_/default_runtime.py' ]