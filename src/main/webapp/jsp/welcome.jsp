<%@page import="com.javawebapp.utility.ServletUtility"%>
<body>
<%@ include file="Header.jsp"%>
<h3 style="color: green;"><%=ServletUtility.getSuccessMessage(request)%></h3>
<h1>Welcome User <%=session.getAttribute("user")%></h1>
<%@ include file="Footer.jsp"%>
</body>
</html>