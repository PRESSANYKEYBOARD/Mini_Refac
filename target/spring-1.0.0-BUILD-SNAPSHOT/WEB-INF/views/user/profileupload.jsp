<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Modal Example</title>
	<!-- CSS 코드를 추가해 모달 스타일링 -->
	<style>
		/* 모달 배경 스타일 */
		.modal {
			display: none;
			position: fixed;
			z-index: 1;
			left: 0;
			top: 0;
			width: 100%;
			height: 100%;
			overflow: auto;
			background-color: rgba(0, 0, 0, 0.4);
		}

		/* 모달 콘텐츠 스타일 */
		.modal-content {
			background-color: #fefefe;
			margin: 15% auto;
			padding: 20px;
			border: 1px solid #888;
			width: 80%;
		}
	</style>
</head>
<body>

	<!-- 모달 배경을 포함한 div 요소 추가 -->
	<div id="myModal" class="modal">
		<!-- 모달 콘텐츠를 포함한 div 요소 추가 -->
		<div class="modal-content">
			<h3>프로필 사진 변경</h3>
			<p>변경할 프로필 사진을 선택해주세요.</p>
			
			
			
	<form id="uploadForm">
		<table border="1">

		 <tr>
			<td colspan="2">
				<!-- 업로드 버튼을 누르기 전에 카메라 아이콘을 통해서 선택한 이미지가 맞는지 확인하기 위해서 이미지를 보이게 한다. -->
				<img id="showImg" width="300" height="300">
			
				<img id="camera" src="../image/카메라이미지.jfif" width="30" height="30">
				<input type="file" name="img" id="img" multiple="multiple" style="visibility:hidden">
			</td>
			</td> 
		</tr>
		 
		 
		<tr>
			<td colspan="2" align="center">
				<input type="button" id="uploadBtn" value="이미지 등록">
			</td>
		</tr>
		
		<input type="text" value="${userid}" name="userid" id="userid"/>

	</table>


</form>
	
		</div>
	</div>
	
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="../js/profileupload.js"></script>
	<script>
		// jsp 파일이 로딩될 때 모달 창을 띄우기 위해 window.onload 함수 사용
		
		window.onload = function() {
			// 모달 div 요소 가져오기
			var modal = document.getElementById("myModal");                                                                                                                                                                                                                                                                                                                                     
			modal.style.display = "block";
		}

		$('#camera').click(function(){
			
			//강제 이벤트 발생 
			$('#img').trigger('click');
			
		});

		$('#img').change(function(){
			readURL(this);
			
		});

		function readURL(input){
			var reader = new FileReader();
			
			reader.onload = function(e){
				$('#showImg').attr('src',e.target.result); //e.target - 이벤트가 발생하는 요소를 반환해준다.
				
			}
			
			reader.readAsDataURL(input.files[0]);
			
		}
	</script>
</body>
</html>