<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import= "member.MemberRepository" %>
<%@ page import= "member.MemberDAO" %>


<%      //request, response 사용 가능 꼭 풀로 써야함.

        MemberRepository memberRepository = MemberRepository.getInstance();

        System.out.println("hi");
        String username = request.getParameter("username");
        int age = Integer.parseInt(request.getParameter("age"));

        MemberDAO member = new MemberDAO(username, age);
        memberRepository.save(member);

%>

<html>
<head>
 <meta charset="UTF-8">
</head>
<body>
성공
<ul>
 <li>id=<%=member.getId()%></li>
 <li>username=<%=member.getUsername()%></li>
 <li>age=<%=member.getAge()%></li>
</ul>
<a href="/index.html">메인</a>
</body>
</html>