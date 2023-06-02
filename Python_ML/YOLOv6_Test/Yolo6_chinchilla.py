import torch

torch.cuda.is_available()

print(torch.__version__)

dtype = torch.float
# device = torch.device("cpu")
# print(device)
device = torch.device("cuda") # Uncomment this to run on GPU, GPU 를 사용하므로 해당 라인 실행
print(device)

print(torch.cuda.get_device_name())

torch.cuda.get_device_name(0)

print(torch.cuda.get_device_name(0))

# device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
#
# print('Device:', device)
# print('Current cuda device:', torch.cuda.current_device())
# print('Count of using GPUs:', torch.cuda.device_count())


# GPU 사용 가능 -> 가장 빠른 번호 GPU, GPU 사용 불가 -> CPU 자동 지정 예시
# device = torch.device('cuda:0') if torch.cuda.is_available() else torch.device('cpu')

print(device)

%pwd

%cd YOLOv6_Test

!git clone https://github.com/meituan/YOLOv6

%cd YOLOv6

%pwd

import numpy

numpy.__version__

# 1. vs_BuildTools.exe 를 필요로 한다고 예러 발생.
#   - vs_BuildTools.exe 설치할때 왼쪽 맨위 체크 박스 선택

%pwd

%cd YOLOv6_Test/YOLOv6

%pwd


# !pip install -r YOLOv6/requirements.txt
!pip install -r requirements.txt


!pip install roboflow

from roboflow import Roboflow
rf = Roboflow(api_key="LFl9gm9dS9xBAY6MSV2f")
project = rf.workspace("yolo-ike41").project("chinchilla_detection")
dataset = project.version(1).download("mt-yolov6")

!pip install addict

# yolov6 모델 훈련 시키기
# 1. CPU 만으로 동작 OK
# 2. GPU 사용을 위해 pytoch import 후 동작시 Runtime 에러
# 3. 재부팅 후 페이징 파일 에러 발생.
!python tools/train.py --batch 32 --conf  configs/yolov6s_finetune.py --epochs 100 --data chinchilla_detection-1/data.yaml --device 0


# 예측 infer
!python tools/infer.py --yaml chinchilla_detection-1/data.yaml --weights runs/train/exp/weights/best_ckpt.pt --source chinchilla_detection-1/images/test/ --device 0

import glob
from IPython.display import Image, display

i = 0
limit = 10
for image_name in glob.glob('./runs/inference/exp/*.jpg'):
  if i< limit:
    display(Image(filename=image_name))

    print('\n')
  i= i+1
