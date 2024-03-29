<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MydiaryList</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/jquery-ui-1.13.1/jquery-ui.css">	
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mydiaryList.css">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mydiaryList_modal.css">
	
	   <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>
	   <script type="text/javascript" src="${pageContext.request.contextPath}/assets/jquery-ui-1.13.1/jquery-ui.js"></script>
	   
	   <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/html2canvas.js"></script>
	   
	    <!-- css에 넣으면 안먹음 -->
	   <style>
	   	.ui-datepicker{
	   		width: 700px !important;
	   		height: 300px !important;
	   	 }
	
		.writedDay {
			background-color: #7030A0;
		}
	   
	   </style>
	   
	   
</head>
<body>
	 <div id="wrap">
        <div class="container">
            <div class="row">

                <!-- header -->
				<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
    
               	<!-- aside -->
				<c:import url="/WEB-INF/views/include/mydiaryaside.jsp"></c:import>
                
    
                <!--컨텐츠 영역-->
                <div class="col-xs-9" id="main-content" style="margin-left:-15px; margin-top:15px;">
                    <div id="div-sub">
                        <h3 style="font-family: 'SCDream4';font-size: 20px; margin-left:20px;">
                        나의 일기 목록
                        </h3>
                    </div>
    
                    <!-- <div class="mydiarydiv">
                        <div>d</div>
                    </div> -->
                    
                    <div class="ct-list col-xs-9">

                        <!--달력-->
                        <div class="cal_nav5">
                           <div id="datepicker"></div>
                        </div>


                        <!--검색창/수정/삭제/정렬-->
                        <div class="li_nav clearfix">
                            <div class="searchfor5">
                                <!--
                                <input type="text" class="search">
                                <img class="glass" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">-->

                                <input type="text" class="search_new" name="" value="" placeholder="검색어를 입력해주세요">
                                <button class="btn-search">
                                    <img id="btnImg" class="glass_new" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
                                </button>
                            </div>

                            <!--선택박스-->
                            <div class="selectbox sel-diary" style="margin-right:21px;">
                                <form>
                                    <select name="option" class="selectbox-small">
                                        <option value="none">ㅡㅡ 선택 ㅡㅡ</option>
                                        <option value="recently">최신순</option>
                                        <option value="old">오래된순</option>
                                    </select>
                                </form>    
                            </div>
						<!-- 클릭시 로그인 후 사용가능한 서비스입니다 뜨면서 회원가입 페이지로 이동되게끔 -->
								<a id="notSign"class="button btn-diarylist">일기 쓰기</a>
                        
                        </div>

                        <!--중간선-->
                        <div class="sectionLine"></div>

                        <!--일기리스트-->
                        <div class="mydiarydiv4">                       

                             <!--목록/사진 하나분량의 박스-일기 하나의  div-->
                             <!--  
                            <div class="clearfix mydiary-list-box2">
                                
                                <!--왼쪽 날짜 일기 비공개-->
                                <!--  
                                <div class="mydiaryText-list2">
                                    <div class="mydiaryText7 clearfix">
                                        <div class="mydiary-Date">Date:</div>
                                        <div class="mydiary-Date">2022-03.24</div>
                                        <div><img id="se_weather_img" class="mydiary-weather2" src="${pageContext.request.contextPath}/assets/img/weather/sunny-day.png"></div>
                                    </div>

                                    <div class="mydiaryText7 mydiary-content">일기제목보이기보이는글자수미정</div>
                                    
                                    <div class="opensetting">
                                        비공개
                                    </div>
                                </div>

                                <!--오른쪽 사진-->
                                <!--  
                                <div class="mydiaryImg-box7 mydiary-box7-support">
                                    <img class="mydiaryImg-innerbox7" src="./assets/img/writediary/writediary.png">
                                </div>
                            </div>-->
                            
                            
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    
</body>


<script type="text/javascript">

$("#notSign").on("click",function(){
	alert("로그인 후 이용 가능한 서비스입니다.");	
	
	setTimeout(function(){
		location.href="${pageContext.request.contextPath}/my/signup";
	},1000);
	
});



//////////////////////////////////////////////////////////
//달력 관련
$( "#datepicker" ).datepicker({

currentText: "오늘", 
prevText: '이전 달', 
nextText: '다음 달', 
monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'], 
dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
weekHeader: "주", 
yearSuffix: '년',
showMonthAfterYear: true,
numberOfMonths: 2,
/* showCurrentAtPos: 2, */
dateFormat: "yy-mm-dd",
beforeShowDay: function(date){ //일기쓴날만 달력 활성화
	return false;
},
onSelect:function(selected, evnt) {
console.log(selected);
}
});


</script>
</html>