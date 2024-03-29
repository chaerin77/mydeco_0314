<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Deco</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/bootstrap/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/shop-my.css">

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/assets/bootstrap/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div id="wrap">
		<div class="container">
			<div class="row">
				
				<!-- header -->
				<c:import url="/WEB-INF/views/include/header.jsp"></c:import>
				
				<!-- aside -->
				<c:import url="/WEB-INF/views/include/aside-shop.jsp"></c:import>
				
				<!-- content -->
				<div class="col-xs-9" id="main-content">
					<div id="div-sub">
						<h3>찜한 상품</h3>
					</div>
					<div class="searchTop">
						<select id="keyword-cate" name="">
							<option value="">선택</option>
							<option value="prodName">제목</option>
							<option value="emotion">감정</option>
							<option value="id">아이디</option>
						</select> <input type="text" id="keyword" name="keyword" value=""
							placeholder="검색어를 입력해주세요">
						<button type="button" id="searchBtn">
							<img id="btnImg" src="${pageContext.request.contextPath}/assets/img/magnifying-glass.png">
						</button>
						<input id="addBtn" class="adddelBtn button" type="button" value="새상품등록">
						<input id="delBtn" class="adddelBtn button" type="button" data-toggle="modal"
							data-target=".delModal" value="목록에서삭제">

						<div class="modal fade delModal" tabindex="-1" role="dialog">
							<div class="modal-dialog modal-sm">
								<div class="modal-content">
									<div class="modal-body">
										정말 삭제하시겠습니까? <br><br>
										<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
        								<button id="delModalBtn" type="button" class="btn btn-danger">삭제</button>
									</div>
								</div>
							</div>
						</div>						
					</div>
					
					<div id="showSearch"><label for="keyword-cate">검색어:</label><p id="keyword"></p></div>
					
					<div id="product-area">
						<ol>
							<c:forEach items="${map.myPickList}" var="productVo">
								<li id="l${productVo.prodNo}"><img class="prod-img" src="${pageContext.request.contextPath}/upload/${productVo.prodImgSrc}">
									<div class="info">
										<p class="emo-tag ${productVo.emotion}"></p> / <p>${productVo.id}</p>
										<h4>${productVo.prodName}</h4>
										<p>${productVo.price}원</p>
										<p class="${productVo.delivery}"></p>

										<div class="etc">
											<label for="diaryCnt">일기: </label>${productVo.diaryCnt} 개 
											<label for="cmtCnt">댓글: </label>${productVo.commentCnt} 개 
											<label for="likedCnt">찜: </label>${productVo.pickCnt} 개 
											<input class="delChk" data-no="${productVo.prodNo}" type="checkbox">
										</div>
									</div>
								</li>
							</c:forEach>							
						</ol> 
					</div> <!-- product-area -->
					<nav>
						<ul class="pagination pagination-sm">
							<c:if test="${map.prev == true}">
								<li><a href="${pageContext.request.contextPath}/myshop/myProducts?crtPage=${map.startPageBtnNo-1}" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
							</c:if>
							
							<c:forEach begin="${map.startPageBtnNo}" end="${map.endPageBtnNo}" step="1" var="page">
								<c:choose>
									<c:when test="${param.crtPage == page}">
										<li class="active"><a href="${pageContext.request.contextPath}/myshop/myProducts?crtPage=${page}">${page}</a></li>
									</c:when>
									<c:otherwise>									
										<li><a href="${pageContext.request.contextPath}/myshop/myProducts?crtPage=${page}">${page}</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							
							<c:if test="${map.next == true}">
								<li><a href="${pageContext.request.contextPath}/myshop/myProducts?crtPage=${map.endPageBtnNo+1}" aria-label="Next"> <span aria-hidden="true">&raquo;</span></a></li>
							</c:if>
						</ul>
					</nav>
				</div> <!-- content -->
				
				<!-- footer -->
				<c:import url="/WEB-INF/views/include/footer.jsp"></c:import> 
			
			</div>	<!-- row -->
		</div> <!-- container -->
	</div> <!-- wrap -->
</body>

<script type="text/javascript">
	$(function () {
		$(".happy").text('기쁨');
		$(".sad").text('슬픔');
		$(".angry").text('화남');
		$(".annoyed").text('짜증');
		$(".relieved").text('홀가분');
		$(".post").text('택배');
		$(".meet").text('직거래');
	});

	$("#addBtn").on("click", function() {
		window.location.href = "${pageContext.request.contextPath}/myshop/addProduct";
	});
	
	var products = [];
	$(".etc").on("click", ".delChk", function() {
		var $this = $(this);
		var prodNo = $this.data("no");
		products.push(prodNo);
		console.log(prodNo);
	});
	
	$("#delModalBtn").on("click", function() {
		console.log(products)
		for(var i=0; i<products.length; i++) {
			var delprodNo = products[i];
			console.log(delprodNo);
			
			$.ajax({			
				url : "${pageContext.request.contextPath}/myshop/myPick/remove",		
				type : "post",
				// contentType : "application/json",
				data : {delprodNo: delprodNo},

				dataType : "json",
				success : function(result){
					console.log(result);	
					
					if(result === 'success') {					
						$("#l"+ delprodNo).remove();
						$('.delModal').modal('hide');
						window.location.href = "${pageContext.request.contextPath}/myshop/pickedProducts?crtPage=1"
					} 								
				},
				error : function(XHR, status, error) {
					console.error(status + " : " + error);
				}				
			});
		}
	});
	
	$("#searchBtn").on("click", function() {
		var keyword = $("#keyword").val();
		console.log(keyword);
		
		$.ajax({			
			url : "${pageContext.request.contextPath}/myshop/pickedProducts",		
			type : "post",
			// contentType : "application/json",
			data : {keyword: keyword},

			//dataType : "json",
			success : function(){
				window.location.href = "${pageContext.request.contextPath}/myshop/pickedProducts?keyword="+keyword;
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}				
		});
		
		$("p#keyword").text(keyword);
	});
</script>
</html>