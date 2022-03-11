<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Mydeco</title>
        <link rel="stylesheet" href="../assets/css/main.css">
        <link rel="stylesheet" href="../assets/css/card.css">
        <link rel="stylesheet" href="../assets/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/> 
        <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
</head>
<body>
			<div id="wrap">
            <!-- header -->
            <div id="header" class="clearfix">
                <h1>
                    <a href=""><img id="logo" src="../assets/img/logo.png"></a>
                </h1>

                <ul id="category" class="clearfix">
                    <div class="dropdown">
                        <li class="dropbtn"><a href="">About</a></li>
                        <ul class="dropdown-content">
                            <li><a href="">�̿� �ȳ�</a></li>
                            <li><a href="">1��1 ����</a></li>
                        </ul>
                    </div>
                    <div class="dropdown">
                        <li class="dropbtn"><a href="">Pen & Paper</a></li>
                        <ul class="dropdown-content">
                            <li><a href="">���� �ϱ�</a></li>
                            <li><a href="">����</a></li>
                            <li><a href="">��ü��</a></li>
                        </ul>
                    </div>
                    <div class="dropdown">
                        <li class="dropbtn"><a href="">Shopping</a></li>
                    </div>
                    <div class="dropdown">
                        <li class="dropbtn"><a href="">Mood</a></li>
                        <ul class="dropdown-content">
                            <li><a href="">������ �Ҷ���</a></li>
                            <li><a href="">�ɸ� �׽�Ʈ</a></li>
                        </ul>
                    </div>
                </ul>
                <ul id="user" class="clearfix">
                    <li><a href="">ȸ������</a></li>
                    <li><a href="">�α���</a></li>
                </ul>
            </div>

        <!-- header�� -->
        <!--content-->
        <div class="cwTitle">
                <h3>���� ī��</h3>
        </div>
        <div class="cardWrap"><!--height700-->
            <div class="cardRead-left">                 
                <div class="cardRead-subcard">
                    <span class="imgdate">2022-02-03</span>
                    <img src="../assets/img/img (7).jpg" alt="">
                </div>
                <div class="ment">������ �ۼ��� �ֱ� ī��</div>
                    <div class="cardReadImg">
                        <div id="slick-container">
                            <img src="../assets/img/img (3).jpg" alt="">
                            <img src="../assets/img/img (4).jpg" alt="">
                            <img src="../assets/img/img (5).jpg" alt="">
                            <img src="../assets/img/img (6).jpg" alt="">
                            <img src="../assets/img/img (7).jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="cardRead-right">
                <div class="cardRead-subcard">
                    <span class="imgdate">2022-02-03</span>
                    <img src="../assets/img/img (1).jpg" alt="">
                </div>
                <div class="ment">�� 50�� ���</div>
                    <div class="cardReadImg">
                        <div id="slick-container" class="slick-box">
                            <div class="slick-box" src="../assets/img/slideLeft.png">
                            <img class="slick-box" src="../assets/img/img (3).jpg" alt="">
                            <img class="slick-box" src="../assets/img/img (4).jpg" alt="">
                            <img class="slick-box" src="../assets/img/img (5).jpg" alt="">
                            <img class="slick-box" src="../assets/img/img (6).jpg" alt="">
                            <img class="slick-box" src="../assets/img/img (7).jpg" alt="">
                            <div class="slick-box" src="../assets/img/slideRight.png"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="btn-ReadBottom">
            <button type="button" class="btn-ReadList"><a class="cardMainForm" href="cardMain.html">�ۼ�ī�� ����Ʈ</a></button><!--list�������� �̵�-->
        </div>

        <script>
        
        </script>
    </body>
</html>