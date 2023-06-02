#!git clone https://github.com/ultralytics/yolov5

import torch
import sys
import os

torch.cuda.is_available()

sys.version

%pwd

%cd yolov5/yolov5-master

%pwd


# !git clone https://github.com/ultralytics/yolov5  # clone
# %cd yolov5
#%pip install -qr requirements.txt

import torch
import utils
display = utils.notebook_init()  # checks