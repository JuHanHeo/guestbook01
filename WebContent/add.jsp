<%@page import="com.jx372.guestbook.dao.GuestBookDao"%>
<%@page import="com.jx372.guestbook.vo.GuestBookVo"%>
<%
request.setCharacterEncoding("utf-8");
GuestBookVo vo = new GuestBookVo();
vo.setName(request.getParameter("name"));
vo.setPasswd(request.getParameter("passwd"));
vo.setMessage(request.getParameter("message"));

new GuestBookDao().insert(vo);
response.sendRedirect("/guestbook01");
%>
