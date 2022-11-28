<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
</head>
<body>
성공
<ul>
 <li>id=${member.user_id}</li>
 <li>username=${member.pwd}</li>
 <li>phone=${member.phone}</li>
 <li>email=${member.email}</li>
 <li>name=${member.username}</li>
</ul>
<a href="/v2/members">메인</a>
</body>
</html>