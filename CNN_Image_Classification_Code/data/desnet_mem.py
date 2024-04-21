import paddle
from PIL import Image
import os
import numpy as np
from paddle.vision.ops import DeformConv2D


print(paddle.__version__)
class FlowerDataset(paddle.io.Dataset):
    def __init__(self, mode='train', label_path='flowers/meta/train.txt'):

        assert mode in ['train', 'eval', 'test'], 'mode is chosen from train, eval, test.'
        self.mode = mode.lower()
        self.label_path = label_path
        self.data = []

        with open(label_path) as f:
            for line in f.readlines():
                info = line.strip().split(' ')
                if len(info) > 0:
                    image_root = label_path.split('/')[0]
                    if mode=="train":
                        info[0]=os.path.join(image_root,mode,info[0])
                    elif mode=="eval":
                        info[0]=os.path.join(image_root,"val",info[0])
                    else:
                        info[0]=os.path.join(image_root,"test",info[0])
                    self.data.append([info[0].strip(), info[1].strip()])

    def preprocess(self,image):


        if self.mode == 'train':
            image = image.resize((224, 224), Image.BICUBIC)


            image = np.asarray(image)
            image = image.astype('float32')
            mean = [0.485, 0.456, 0.406]
            std = [0.229, 0.224, 0.225]
            max_value = [255, 255, 255]
            min_value = [0, 0, 0]
            mean = np.asarray(mean, dtype=np.float32)[np.newaxis, np.newaxis, :]
            std = np.asarray(std, dtype=np.float32)[np.newaxis, np.newaxis, :]
            range_value = np.asarray([1. / (max_value[i] - min_value[i]) for i in range(len(max_value))],dtype=np.float32)
            image = (image - np.asarray(min_value, dtype=np.float32)) * range_value
            image -= mean
            image /= std
            return paddle.to_tensor(image.transpose((2,0,1)))

        else:

            image = image.resize((224, 224), Image.BICUBIC)

            image = np.asarray(image)
            image = image.astype('float32')
            mean = [0.485, 0.456, 0.406]
            std = [0.229, 0.224, 0.225]
            max_value = [255, 255, 255]
            min_value = [0, 0, 0]
            mean = np.asarray(mean, dtype=np.float32)[np.newaxis, np.newaxis, :]
            std = np.asarray(std, dtype=np.float32)[np.newaxis, np.newaxis, :]
            range_value = np.asarray([1. / (max_value[i] - min_value[i]) for i in range(len(max_value))],dtype=np.float32)
            image = (image - np.asarray(min_value, dtype=np.float32)) * range_value
            image -= mean
            image /= std

            return paddle.to_tensor(image.transpose((2,0,1)))

    def __getitem__(self, index):

        image_file, label = self.data[index]
        image = Image.open(image_file)

        if image.mode != 'RGB':
            image = image.convert('RGB')

        image = self.preprocess(image)
        return image, np.array(label, dtype='int64')

    def __len__(self):

        return len(self.data)
train_dataset=FlowerDataset(mode='train', label_path='flowers/meta/train.txt')
val_dataset=FlowerDataset(mode='eval',label_path='flowers/meta/val.txt')
test_dataset=FlowerDataset(mode='test',label_path='flowers/meta/test.txt')
print(test_dataset)
import paddle
import paddle.nn as nn
from paddle.nn import Conv2D, MaxPool2D, AdaptiveAvgPool2D, Linear, ReLU, BatchNorm2D
import paddle.nn.functional as F

class ConvBNLayer(paddle.nn.Layer):
    def __init__(self,
                 in_channels,
                 out_channels,
                 kernel_size,
                 stride=1,
                 act=None):

        super(ConvBNLayer, self).__init__()
        self._conv = Conv2D(
            in_channels=in_channels,
            out_channels=out_channels,
            kernel_size=kernel_size,
            stride=stride,
            padding=(kernel_size - 1) // 2,
            bias_attr=False)
        self._batch_norm = BatchNorm2D(out_channels)
        self.act = act

    def forward(self, inputs):
        y = self._conv(inputs)
        y = self._batch_norm(y)
        if self.act == 'relu':
            y = F.relu(x=y)
        return y

class DConvBNLayer(paddle.nn.Layer):
    def __init__(self,
                 in_channels,
                 out_channels,
                 kernel_size,
                 stride=1,
                 act=None):

        super(DConvBNLayer, self).__init__()
        self._offset=paddle.nn.Conv2D(in_channels=in_channels,
            out_channels=2*kernel_size*kernel_size,
            kernel_size=kernel_size,
            stride=stride,
            padding=(kernel_size - 1) // 2,
            bias_attr=False)
        self._mask=paddle.nn.Conv2D(in_channels=in_channels,
            out_channels=kernel_size*kernel_size,
            kernel_size=kernel_size,
            stride=stride,
            padding=(kernel_size - 1) // 2,
            bias_attr=False)
        self._dconv = DeformConv2D(in_channels=in_channels,
            out_channels=out_channels,
            kernel_size=(kernel_size,kernel_size),
            stride=stride,
            padding = (kernel_size - 1) // 2)

        self._batch_norm = BatchNorm2D(out_channels)
        self.act = act

    def forward(self, inputs):
        offsets = self._offset(inputs)
        masks = self._mask(inputs)
        # print(offsets.shape)
        # print(masks.shape)
        y = self._dconv(inputs, offsets, masks)
        y = self._batch_norm(y)
        if self.act == 'relu':
            y = F.relu(x=y)
        return y

class Bottleneckblock(paddle.nn.Layer):
    def __init__(self, inplane, in_channel, out_channel, stride = 1, start = False):
        super(Bottleneckblock, self).__init__()
        self.stride = stride
        self.start = start
        self.conv0 = ConvBNLayer(in_channel, inplane, 1, stride = stride, act='relu')
        self.conv1 = ConvBNLayer(inplane, inplane, 3, stride=1, act='relu')
        self.conv2 = ConvBNLayer(inplane, out_channel, 1, stride=1, act=None)
        self.conv3 = ConvBNLayer(in_channel, out_channel, 1, stride = stride, act=None)
        self.relu = nn.ReLU()

    def forward(self, inputs):
        y = inputs
        x = self.conv0(inputs)
        x = self.conv1(x)
        x = self.conv2(x)
        if self.start:
            y = self.conv3(y)
        z = self.relu(x+y)
        return z

class DBottleneckblock(paddle.nn.Layer):
    def __init__(self, inplane, in_channel, out_channel, stride = 1, start = False):
        super(DBottleneckblock, self).__init__()
        self.stride = stride
        self.start = start
        self.conv0 = DConvBNLayer(in_channel, inplane, 1, stride = stride, act='relu')
        self.conv1 = ConvBNLayer(inplane, inplane, 3, stride=1, act='relu')
        self.conv2 = ConvBNLayer(inplane, out_channel, 1, stride=1, act=None)
        self.conv3 = ConvBNLayer(in_channel, out_channel, 1, stride = stride, act=None)
        self.relu = nn.ReLU()

    def forward(self, inputs):
        y = inputs
        x = self.conv0(inputs)
        x = self.conv1(x)
        x = self.conv2(x)
        if self.start:
            y = self.conv3(y)
        z = self.relu(x+y)
        return z

class Resnet50(paddle.nn.Layer):
    def __init__(self, num_classes=17):
        super().__init__()
        # stem layers
        self.stem = nn.Sequential(
                    nn.Conv2D(3, out_channels=64, kernel_size=7, stride=2, padding=3),
                    nn.BatchNorm2D(64),
                    nn.ReLU(),
                    nn.MaxPool2D(kernel_size=3, stride=2, padding=1))
        # blocks
        self.layer1 = self.add_bottleneck_layer(3, 64, start = True)
        self.layer2 = self.add_bottleneck_layer(4, 128)
        self.layer3 = self.add_bottleneck_layer(6, 256)
        self.layer4 = self.add_bottleneck_layer(3, 512)
        # head layer
        self.avgpool = nn.AdaptiveAvgPool2D(1)
        self.classifier = nn.Linear(2048, num_classes)

    def add_bottleneck_layer(self, num, inplane, start = False):
        layer = []
        if start:
            layer.append(Bottleneckblock(inplane, inplane, inplane*4, start = True))
        else:
            layer.append(Bottleneckblock(inplane, inplane*2, inplane*4, stride = 2, start = True))
        for i in range(num-1):
            layer.append(Bottleneckblock(inplane, inplane*4, inplane*4))
        return nn.Sequential(*layer)

    def forward(self, inputs):
        x = self.stem(inputs)
        x = self.layer1(x)
        x = self.layer2(x)
        x = self.layer3(x)
        x = self.layer4(x)
        x = self.avgpool(x)
        x = x.flatten(1)
        x = self.classifier(x)
        return x
class Desnet50(paddle.nn.Layer):
    def __init__(self, num_classes=17):
        super().__init__()
        # stem layers
        self.stem = nn.Sequential(
                    nn.Conv2D(3, out_channels=64, kernel_size=7, stride=2, padding=3),
                    nn.BatchNorm2D(64),
                    nn.ReLU(),
                    nn.MaxPool2D(kernel_size=3, stride=2, padding=1))
        # blocks
        self.layer1 = self.add_bottleneck_layer(3, 64, start = True)
        self.layer2 = self.add_dbottleneck_layer(4, 128)
        self.layer3 = self.add_bottleneck_layer(6, 256)
        self.layer4 = self.add_bottleneck_layer(3, 512)
        # head layer
        self.avgpool = nn.AdaptiveAvgPool2D(1)
        self.classifier = nn.Linear(2048, num_classes)

    def add_bottleneck_layer(self, num, inplane, start = False):
        layer = []
        if start:
            layer.append(Bottleneckblock(inplane, inplane, inplane*4, start = True))
        else:
            layer.append(Bottleneckblock(inplane, inplane*2, inplane*4, stride = 2, start = True))
        for i in range(num-1):
            layer.append(Bottleneckblock(inplane, inplane*4, inplane*4))
        return nn.Sequential(*layer)
    def add_dbottleneck_layer(self, num, inplane, start = False):
        layer = []
        if start:
            layer.append(DBottleneckblock(inplane, inplane, inplane*4, start = True))
        else:
            layer.append(DBottleneckblock(inplane, inplane*2, inplane*4, stride = 2, start = True))
        for i in range(num-1):
            layer.append(Bottleneckblock(inplane, inplane*4, inplane*4))
        return nn.Sequential(*layer)
    def forward(self, inputs):
        x = self.stem(inputs)
        x = self.layer1(x)
        x = self.layer2(x)
        x = self.layer3(x)
        x = self.layer4(x)
        x = self.avgpool(x)
        x = x.flatten(1)
        x = self.classifier(x)
        return x
resnet50 = Resnet50(num_classes=17)
desnet50= Desnet50(num_classes=17)
paddle.summary(resnet50, (1, 3, 224, 224))
paddle.summary(desnet50, (1, 3, 224, 224))

from paddle.nn import CrossEntropyLoss
from paddle.metric import Accuracy
import math

Epochs = 200

print("0.5*Batch size:")
Batch_size =int(input())

Step_each_epoch = math.ceil(len(train_dataset.data)/Batch_size)
print("Learning rate:")
lr=float(input())

Optimizer = paddle.optimizer.Adam(learning_rate=lr,parameters=desnet50.parameters())

Loss_fn = CrossEntropyLoss()

Train_loader = paddle.io.DataLoader(train_dataset, batch_size=Batch_size, shuffle=True)
Val_loader = paddle.io.DataLoader(val_dataset, batch_size=Batch_size)
def train(model, epochs, train_loader, val_loader, optimizer, loss_fn):

    val_acc=[]
    acc_history = [0]
    for epoch in range(epochs):
        model.train()
        count=0
        for batch_id, data in enumerate(train_loader()):
            x_data = data[0]
            y_data = data[1]
            y_data = paddle.reshape(y_data, (-1, 1))
            predicts = model(x_data)
            loss = loss_fn(predicts, y_data)
            loss.backward()
            if count==0:
                optimizer.step()
                optimizer.clear_grad()
                count=2
            count-=1
        print("[TRAIN] epoch: {}/{}, loss is: {}".format(epoch+1, epochs, loss.numpy()))
        model.eval()
        loss_list = []
        acc_list = []
        for batch_id, data in enumerate(val_loader()):
            x_data = data[0]
            y_data = data[1]
            y_data = paddle.reshape(y_data, (-1, 1))
            predicts = model(x_data)
            loss = loss_fn(predicts, y_data)
            acc = paddle.metric.accuracy(predicts, y_data)
            loss_list.append(np.mean(loss.numpy()))
            acc_list.append(np.mean(acc.numpy()))
        print("[EVAL] Finished, Epoch={}, loss={}, acc={}".format(epoch+1, np.mean(loss_list), np.mean(acc_list)))
        if acc_history[-1] < np.mean(acc_list):
            paddle.save(desnet50.state_dict(),'output/desnet50'+'-lr'+str(lr)+'-bs'+str(Batch_size*2)+'.pdparams'.format(epoch))
        acc_history.append(np.mean(acc_list))
        val_acc.append([epoch,np.mean(acc_list)])
    file=open('output/desnet50'+'-lr'+str(lr)+'-bs'+str(Batch_size*2)+'valacc.txt','w')
    for item in val_acc:
        ep=item[0]
        ac=item[1]
        stri=str(ep)+" "+str(ac)
        file.write(stri+"\n")
    file.close()
train(desnet50, Epochs, Train_loader, Val_loader, Optimizer, Loss_fn)
