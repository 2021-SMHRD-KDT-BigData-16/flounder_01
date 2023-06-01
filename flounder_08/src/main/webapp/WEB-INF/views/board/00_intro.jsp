<!DOCTYPE html>
<html lang="en">

<head>
  <title>00 Intro</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.6.2/css/bootstrap.min.css">
  <style>
    body {
      background-image: url("./resources/images/sea03.gif");
      background-size: cover;
      background-repeat: no-repeat;
      min-height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      flex-direction: column;
    }
    
    .start-button {
      color: white;
      font-weight: bold;
      font-size: 26px;
      padding: 10px;
      border-radius: 5px;
      transition: background-color 0.3s;
      background-color: #5AD5C8;
      border: 2px solid white; /* 테두리 추가 */
      border-radius: 5px; /* 테두리를 각지게 만들기 */
      border-width: 3px; /* 테두리 선 굵기 조정 */
    }
    
    .start-button:hover {
      background-color: transparent; /* 배경 없애기 */
    }
  </style>
</head>

<body>
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-6 col-sm-8 col-xs-12">
        <button class="start-button btn btn-block" onClick="location.href='./04'">Welcome</button>
      </div>
    </div>
  </div>
</body>

</html>
