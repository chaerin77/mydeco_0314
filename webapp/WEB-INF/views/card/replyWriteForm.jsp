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
            <div class="col-xs-6">
                <div class="cardReply-left"><!--��������-->
                    <div class="Reply-LB"><img src="../assets/img/img (1).jpg" alt=""></div>
                </div>
            </div>
            <div class="col-xs-6">
                <div class="cardReply-right"><!--��������-->
                    <div class="Reply-RB"><img class="ReplyRightImg" src="../assets/img/img (2).jpg" alt=""></div>
                </div>
            </div>
            <div class="r-text">������</div>
            <div class="r-bgtext"><button type="button" id="popup_open_btn">��漱��</button></div><!--���â-->
            
            <div>
                <button type="submit" class="btn-ReplyComment"><a href="cardReply.html">���ī�� �ۼ�</a></button>
            </div>

            <div id="my_modal">
                
                <div>
                    <div class="bgs">
                        ��� ����
                    </div>
                    
                    <div id="card-read">
                        <img src="../assets/img/img (1).jpg"><!--������ ����-->
                        <img src="../assets/img/img (2).jpg">
                        <img src="../assets/img/img (3).jpg">
                        <img src="../assets/img/img (4).jpg">
                        <img src="../assets/img/img (5).jpg">
                        <img src="../assets/img/img (6).jpg">
                        <img src="../assets/img/img (7).jpg">
                        <img src="../assets/img/img (8).jpg">
                    </div>
                </div>
                <div class="btn-center">
                    <button class="btn-card-close" type="button">�ݱ�</button>
                </div>
            </div>
            
        </body>

    <script type="text/javascript">
        function modal(id) {
            var zIndex = 9999;
            var modal = document.getElementById(id);
        
            // ��� div �ڿ� ��������� ���̾�
            var bg = document.createElement('div');
            bg.setStyle({
                position: 'fixed',
                zIndex: zIndex,
                left: '0px',
                top: '0px',
                width: '100%',
                height: '100%',
                overflow: 'auto',
                // ���̾� ������ ���⼭ �ٲٸ� ��
                backgroundColor: 'rgba(0,0,0,0.4)'
            });
            document.body.append(bg);
        
            // �ݱ� ��ư ó��, �ò��� ���̾�� ��� div �����
            modal.querySelector('.btn-card-close').addEventListener('click', function() {
                bg.remove();
                modal.style.display = 'none';
            });
        
            modal.setStyle({
                position: 'fixed',
                display: 'block',
                boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',
        
                // �ò��� ���̾� ���� ��ĭ ���� ���̱�
                zIndex: zIndex + 1,
        
                // div center ����
                top: '50%',
                left: '50%',
                transform: 'translate(-50%, -50%)',
                msTransform: 'translate(-50%, -50%)',
                webkitTransform: 'translate(-50%, -50%)'
            });
        }
        
        // Element �� style �ѹ��� ������Ʈ�� �����ϴ� �Լ� �߰�
        Element.prototype.setStyle = function(styles) {
            for (var k in styles) this.style[k] = styles[k];
            return this;
        };
        
        document.getElementById('popup_open_btn').addEventListener('click', function() {
            // ���â ����
            modal('my_modal');
        });
        </script>

</body>
</html>