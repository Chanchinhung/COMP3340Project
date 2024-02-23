import numpy as np
import os, pdb


all_images = os.listdir(".")
all_images = [i for i in all_images if "jpg" in i]
all_images = sorted(all_images)
# pdb.set_trace()

# there are 1360 images totally with 17 classes, each class has 80 images
# 1-80 belongs to class 1; 81-160 belongs to class 2...
train_images = []
val_images = []
test_images = []
for i in range(17):
    permutated_images = np.random.permutation(all_images[i*80 : (i+1)*80])
    train_images.append(permutated_images[:4*len(permutated_images)//5])
    val_images.append(permutated_images[4*len(permutated_images)//5:9*len(permutated_images)//10])
    test_images.append(permutated_images[9*len(permutated_images)//10:])

os.makedirs("train", exist_ok=True)
os.makedirs("val", exist_ok=True)
os.makedirs("test", exist_ok=True)


cnt = 0
for class_images in train_images:
    for img in class_images:                                 
        class_i = "class_" + str(cnt)
        os.makedirs(f"train/{class_i}", exist_ok=True)
        os.system(f"cp {img} train/{class_i}")
    print("train", class_i)
    cnt += 1
    
cnt = 0
for class_images in val_images:
    for img in class_images:                                 
        class_i = "class_" + str(cnt)
        os.makedirs(f"val/{class_i}", exist_ok=True)
        os.system(f"cp {img} val/{class_i}")
    print("val", class_i)
    cnt += 1

cnt = 0
for class_images in test_images:
    for img in class_images:                                 
        class_i = "class_" + str(cnt)
        os.makedirs(f"test/{class_i}", exist_ok=True)
        os.system(f"cp {img} test/{class_i}")
    print("test", class_i)
    cnt += 1