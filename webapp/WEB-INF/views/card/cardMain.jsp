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
      <div id="container">
          <!-- aside -->
          <div class="col-xs-3">
              <div id="aside">
                  <ul id="aside_ul" class="clearfix">
                      <li class="aside_top">pen&paper</li>
                      <li>���� �ϱ�</li>
                      <li>���� ī��</li>
                      <li>�̷� ����</li>
                  </ul>
              </div>
          </div>
          <!-- aside �� -->
          <!--content-->
          <div class="col-xs-9">
              <div class="card_list">
                  <div id="cTitle">
                      <h3>���� ī��</h3>
                   </div>
                   
                  <div id="card_tap">
                      <input id="tab1" type="radio" name="tabs" checked> <!--����Ʈ �޴�-->
                      <label for="tab1">�ۼ� ī��</label>
                  
                      <input id="tab2" type="radio" name="tabs">
                      <label for="tab2">���� ī��</label>

                          <section id="content1">
                              <button class="btn-card-write" type="button"><a class="cardWriteForm" href="cardWrite.html">ī�� ����</a></button>
                          
                              <div class="tap_content">
                                  <div class="card-letter">
                                      <div class="card-text">
                                              <div class="subcard">
                                                  <img src="../assets/img/img (1).jpg" alt="">
                                                  <span class="imgdate">2022-03-03</span>
                                                  <span class="imgtext">������<br>�� ���� �����ε�<br>�������ּ��䢽</span>
                                                  <span class="imgnum">����10��</span>
                                              </div>
                                              <div class="subcard">
                                                  <img src="../assets/img/img (2).jpg" alt="">
                                                  <span class="imgdate">2022-01-14</span>
                                                  <span class="imgtext">���Ǽ� ������ �ȸ¾ƿ� �������� ã�ƿ� ���Ǳ� ����!!</span>
                                                  <span class="imgnum">����0��</span>
                                              </div>
                                              <div class="subcard">
                                                  <img src="../assets/img/img (3).jpg" alt="">
                                                  <span class="imgdate">2022-01-01</span>
                                                  <span class="imgtext">����� �ϰ�;��Ф��� ��� �� ����ֽǺ�</span>
                                                  <span class="imgnum">����3��</span>
                                              </div>
                                      </div>
                                      <div class="card-text">
                                          <div class="subcard">
                                              <img src="../assets/img/img (4).jpg" alt="">
                                              <span class="imgdate">2021-12-01</span>
                                              <span class="imgtext">���ù� ���� ����<br>�� �� ������ �ұ�?</span>
                                              <span class="imgnum">����1��</span>
                                          </div>
                                          <div class="subcard">
                                              <img src="../assets/img/img (5).jpg" alt="">
                                              <span class="imgdate">2021-12-25</span>
                                              <span class="imgtext">¦��� �׸��ϰ� �;��...������ ���Ⱑ ���� �ʳ׿�</span>
                                              <span class="imgnum">����10��</span>
                                          </div>
                                          <div class="subcard">
                                              <img src="../assets/img/img (6).jpg" alt="">
                                              <span class="imgdate">2021-12-24</span>
                                              <span class="imgtext">���� ũ���������ε� �ٵ� ��ũ ����??</span>
                                              <span class="imgnum">����8��</span>
                                          </div>
                                      </div>
                                      <div class="row">
                                          <div class="col-xs-12">
                                              <li>
                                                  <div id="divPaging" class="divPaging1">
                                                      <div>��</div>
                                                      <div><b>1</b></div>
                                                      <div>2</div>
                                                      <div>3</div>
                                                      <div>4</div>
                                                      <div>5</div>
                                                      <div>��</div>
                                                  </div>
                                              </li>
                                          </div>
                                          
                                      </div>
                                  </div>
                              </div>
                          </section>
                      
                          <section id="content2">
                              <div class="tap_content">
                                  <div class="card-letter">
                                      <div class="card-text">
                                          <div class="subcard">
                                              <img src="../assets/img/img (7).jpg" alt="">
                                              <span class="imgdate">2022-03-07</span>
                                              <input type="checkbox" class="chk-del" name="del" />
                                              <span class="imgtext">�ɽ��ѵ� �����ձ� �ϰ� ����</span>
                                              <span class="imgnum">����11��</span>
                                          </div>
                                          <div class="subcard">
                                              <img src="../assets/img/img (8).jpg" alt="">
                                              <span class="imgdate">2022-03-01</span>
                                              <input type="checkbox" class="chk-del" name="chk-del" value="del"/>
                                              <span class="imgtext">���� ����ģ���� �ôµ� �ʹ� ������!!��� �츮 ������..</span>
                                              <span class="imgnum">����3��</span>
                                          </div>
                                      </div>

                                      <div class="row">
                                          <div class="col-xs-9">
                                              <li>
                                                  <div id="divPaging" class="divPaging2">
                                                      <div>��</div>
                                                      <div><b>1</b></div>
                                                      <div>2</div>
                                                      <div>3</div>
                                                      <div>4</div>
                                                      <div>5</div>
                                                      <div>��</div>
                                                  </div>
                                              </li>
                                          </div>
                                          <div class="col-xs-3">
                                              <button class="btn-card-del" type="reset">����</button>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                          </section>
                     
                  </div>
              </div>
          </div>
          <!--content��-->
      </div>
      <!--wrap ��-->
     

       
      <!--footer-->
      
      <!--footer��-->
  </div>
  <!--wrap��-->
 
</body>
</html>