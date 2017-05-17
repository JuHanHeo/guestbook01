<%@page import="com.jx372.guestbook.dao.GuestBookDao"%>
<%
request.setCharacterEncoding("utf-8");
new GuestBookDao().delete(request.getParameter("no"));
response.sendRedirect("/guestbook01");
%>