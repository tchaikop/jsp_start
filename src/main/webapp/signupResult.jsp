<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 처리 </title>
</head>
<body>
<%
	String mid = request.getParameter("mid");
	System.out.println(mid);

	String mpw = request.getParameter("mpw");
	System.out.println(mpw);
	
	String mname = request.getParameter("mname");
	System.out.println(mname);
	
	String gender = request.getParameter("gender");
	System.out.println(gender);
	
	String bloodtype = request.getParameter("bloodtype");
	System.out.println(bloodtype);
	
	String intro = request.getParameter("intro");
	System.out.println(intro);
	
	
	String[] hobby = request.getParameterValues("hobby");
	
	for(int i=0;i<hobby.length;i++){
		
		System.out.println(hobby[i]);
	}
	



%>
<h1>  회원가입 정보 내역</h1>
<hr>
<h2> 아이디 : <%= mid %></h2>
<h2> 비밀번호 : <%= mpw %></h2>
<h2> 이름 : <%= mname %></h2>
<h2> 성별 : <%= gender %></h2>
<h2> 소개 : <%= intro %></h2>

<h2>취미</h2>

<%
for(int i=0;i<hobby.length;i++){
	
%>

<h2><%= hobby[i] %></h2>
<%
}
%>




</body>
</html>