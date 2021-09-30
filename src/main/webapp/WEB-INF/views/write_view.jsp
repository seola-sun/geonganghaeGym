<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 로그인</title>
<link href="./resources/css/write_view.css" rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/53a8c415f1.js"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	function registerCheckFunction() {
		var id = $('#id').val();
		$.ajax({
			type : 'POST',
			url : "idCheck",
			data : {
				id : id
			},
			success : function(result) {
				console.log("result : " + result);
				if (result == 1) {
					alert("이미 사용중인 아이디입니다.");
				} else {
					alert("사용 가능한 아이디입니다.");
				}
			}

		})
	}
</script>
</head>
<body>
	<center>
		<form action="write" method="post">
			<table width="800">
				<tr height="40">
					<td align="center"><b>[회원가입]</b></td>
				</tr>
			</table>
			<table width="700" height="400" cellpadding="0"
				style="border-collapse: collapse; font-size: 9pt;">
				<tr class="register" height="30">
					<td width="5%" align="center">*</td>
					<td width="15%">회원 ID</td>
					<td>
						<input type="text" id="id" name="id" size="30" placeholder="4~12자의 영문 대소문자와 숫자로만 입력" />
						<button onclick="registerCheckFunction();" type="button">중복체크</button>
					</td>
				</tr>
				<tr height="7">
					<td colspan="3"><hr /></td>
				</tr>
				<tr class="register" height="30">
					<td width="5%" align="center">*</td>
					<td width="15%">비밀번호</td>
					<td>
						<input type="password" name="password" size="30"
						onchange="isSame()" placeholder="4~12자의 영문 대소문자와 숫자로만 입력"/>
					</td>
				</tr>
				<tr height="7">
					<td colspan="3"><hr /></td>
				</tr>


				<tr class="register" height="30">
					<td width="5%" align="center">*</td>
					<td width="15%">이 름</td>
					<td><input type="text" name="name" size="30" /></td>
				</tr>

				<tr height="7">
					<td colspan="3"><hr /></td>
				</tr>

				<tr class="register" height="30">
					<td width="5%" align="center">*</td>
					<td width="15%">연락처</td>
					<td><input type="text" name="tel_number" size="30" /></td>
				</tr>

				<tr height="7">
					<td colspan="3"><hr /></td>
				</tr>

				<tr class="register" height="30">
					<td width="5%" align="center">*</td>
					<td width="15%">이메일</td>
					<td><input type="text" name="email" size="30" placeholder="예)id@domain.com"/></td>
				</tr>
				<tr height="7">
					<td colspan="3"><hr /></td>
				</tr>
			</table>
			<br />
			<div class="submit">
				<input type="submit" style="width: 120pt; height: 40pt;"
					value="회원가입" />
			</div>
		</form>
	</center>


</body>
</html>