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
<!--��������-->
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
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
                <div class="cardWrite-left">
                    <div class="cardSendbox">                    
                        <div class="cardWrite-subcard">
                            <img src="../assets/img/img (1).jpg" alt="">
                            <span class="imgdate">2022-02-03</span>
                            <span class="imgtext">
                                <textarea id="c-text" name="c-text" cols="30" rows="10"></textarea>
                                <div id="text_cnt">(0 / 300)</div>
                            </span>
                        </div>
                        <div class="cardSet">
                            <div class="card-age">����</div>
                                <div class="card-set1">
                                    <label><input class="cardset" type="checkbox" name="age" value="teen">10��</label>
                                    <label><input class="cardset" type="checkbox" name="age" value="twn">20��</label>                                                                     
                                    <label><input class="cardset" type="checkbox" name="age" value="trn">30��</label>                                                                     
                                    <label><input class="cardset" type="checkbox" name="age" value="frn">40�� �̻�</label>                                                                     
                                </div>
                            <div class="card-gender">����</div>
                                <div class="card-set2">
                                    <label><input class="cardset" type="checkbox" name="gender" value="female">����</label>
                                    <label><input class="cardset" type="checkbox" name="gender" value="male">����</label>                                                                     
                                </div>
                        </div>
                    </div>                     
                </div>
                <!--�����ֱ�-->
                <div class="cardWrite-right">
                    <div class="cardWriteImg"><a href=""><img src="../assets/img/img (1).jpg" alt=""></a></div>
                    <div class="cardWriteImg"><a href=""><img src="../assets/img/img (2).jpg" alt=""></a></div>
                    <div class="cardWriteImg"><a href=""><img src="../assets/img/img (3).jpg" alt=""></a></div>
                    <div class="cardWriteImg"><a href=""><img src="../assets/img/img (4).jpg" alt=""></a></div>
                    <div class="cardWriteImg"><a href=""><img src="../assets/img/img (5).jpg" alt=""></a></div>
                    <div class="cardWriteImg"><a href=""><img src="../assets/img/img (6).jpg" alt=""></a></div>
                </div>
                <div class="cardWritePage">
                    <p class="page-no">��  1  2  3  4  5  ��</p>
                </div>
                
                <!--content��-->
                <div class="clearfix">
                    <div class="cardWrite-bottom">
                        <input id="saveBtn" type="submit" class="btn-writeform-save" value="������">
                        <button type="reset" class="btn-writeform-reset"><a class="cardMainForm" href="cardMain.html">���</a></button><!--list�������� �̵�-->
                    </div>
                </div>
            </div>
        
 
    <script>
 
    $(document).ready(function() {
        $('#c-text').on('keyup', function() {
            $('#text_cnt').html("("+$(this).val().length+" / 300)");
 
            if($(this).val().length > 300) {
                $(this).val($(this).val().substring(0, 300));
                $('#text_cnt').html("(300 / 300)");
            }
        });
    });
        
    </script>
    </body>
</html>