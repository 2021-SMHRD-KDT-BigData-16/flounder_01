from flask import Flask, request
from PIL import Image
import io
from werkzeug.utils import secure_filename
import os
import cv2
import matplotlib.pyplot as plt

from flask import send_file

app = Flask(__name__)


'''
def perform_some_operation(img):
    # 인공지능 모델 호출
    return "Hello World"
    
@app.route('/process_image', methods=['POST'])
def process_image():
    file = request.files['image']
    img = Image.open(io.BytesIO(file.read()))
    # 이미지 처리 코드를 이 곳에 작성...
    result = perform_some_operation(img)
    return {'result': result}

if __name__ == '__main__':

    app.run(host='0.0.0.0', port=5000)
'''

def html_temp1():
    return """<!DOCTYPE html>
            <html>
            <head> 
            <title>Document</title>
            </head>
            <body>

            <h1>bmi를 구해보자</h1>
            <p>Height와 Weight를 입력하세요!</p>
            <form action = 'http://127.0.0.1:5000/user', method = 'GET'>
              키:<input type="text" id="Height" name="h"><br>
              몸무게:<input type="text" id="Weight" name="w">
              <input type='submit'></input>
            </form >

            </body>
            </html>"""

# flask 코드
from flask import Flask, request, jsonify, redirect
app = Flask(__name__)

@app.route('/')
def input_data():
    # html 페이지 실행
    return html_temp1()

@app.route('/user', methods = ['GET', 'POST'])
def user():
    if request.method == 'GET':
        h = request.args.get('h') # 사용자가 입력한 키
        w = request.args.get('w') # 사용자가 입력한 몸무게
        return redirect(f'http://127.0.0.1:5000?bmi_result=result')

@app.route('/process_image', methods=['POST'])
def process_image():
    file = request.files['image']
    # file_name = 'static/uploads/' + secure_filename(file.filename)
    # file_name = secure_filename(file.filename)
    org_file_name = secure_filename(file.filename)
    save_file_name = './images/' + org_file_name
    file.save(save_file_name)

    # img = Image.open(io.BytesIO(file.read()))
    # # 이미지 처리 코드를 이 곳에 작성...

    rec_file_name = './images/rec_' + org_file_name

    image = cv2.imread(save_file_name)
    cv2.rectangle(image, (100, 100), (300, 300), (0, 255, 0), 10)
    cv2.imwrite(rec_file_name, image)

    #result = perform_some_operation(img)
    return {'rec_file_name': rec_file_name}


@app.route('/return_image', methods=['POST'])
def return_image():
    file = request.files['image']
    # file_name = 'static/uploads/' + secure_filename(file.filename)
    # file_name = secure_filename(file.filename)
    org_file_name = secure_filename(file.filename)
    save_file_name = './images/' + org_file_name
    file.save(save_file_name)

    # img = Image.open(io.BytesIO(file.read()))
    # # 이미지 처리 코드를 이 곳에 작성...

    rec_file_name = './images/rec_' + org_file_name

    image = cv2.imread(save_file_name)
    cv2.rectangle(image, (100, 100), (300, 300), (0, 255, 0), 10)
    cv2.imwrite(rec_file_name, image)

    #result = perform_some_operation(img)
    return send_file(rec_file_name)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)


'''
<%@ page import="java.io.*, java.net.*" %>
<%@ page import="org.apache.commons.io.IOUtils" %>
<%@ page import="org.apache.http.HttpEntity" %>
<%@ page import="org.apache.http.HttpResponse" %>
<%@ page import="org.apache.http.client.methods.HttpPost" %>
<%@ page import="org.apache.http.entity.ContentType" %>
<%@ page import="org.apache.http.entity.mime.MultipartEntityBuilder" %>
<%@ page import="org.apache.http.impl.client.CloseableHttpClient" %>
<%@ page import="org.apache.http.impl.client.HttpClients" %>
<%@ page import="org.apache.http.util.EntityUtils" %>
<%
File imageFile = new File("c:/upload/imgs/image.jpg");
CloseableHttpClient httpClient = HttpClients.createDefault();
//REST API 호출
HttpPost uploadFile = new HttpPost("http://localhost:5000/process_image");
MultipartEntityBuilder builder = MultipartEntityBuilder.create();
builder.addBinaryBody("image", new FileInputStream(imageFile), ContentType.APPLICATION_OCTET_STREAM, 
imageFile.getName());
HttpEntity multipart = builder.build();
uploadFile.setEntity(multipart);
HttpResponse exe_response = httpClient.execute(uploadFile);
HttpEntity responseEntity = exe_response.getEntity();
//JSON 파일 처리
String result = EntityUtils.toString(responseEntity);
%>
Result: <%= result %>
'''







