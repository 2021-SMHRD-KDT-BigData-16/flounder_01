import torch
print(torch.cuda.is_available())

%pwd

%cd yolov5/yolov5-master

%pwd

%cd yolov5-master

%cd utils

%cd ..

%pip install -qr requirements.txt

import torch
import utils

from utils import *
display = utils.notebook_init()  # checks