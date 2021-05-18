<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.*" %>
<%@ page import="org.orgDAO" %>

<%!
		private String oid;
		private String orgPassword;
		private String orgName;
		public String getOid(){return oid;}
		public String getOrgPassword(){return orgPassword;}
		public String getOrgName(){return orgName;}
%>
<%
		//객체 생성
		orgDAO orgDAO = new orgDAO();
		int result = orgDAO.login(oid, orgPassword);
		
		//로그인 성공
		if(result == 1){
			session.setAttribute("oid", orgName);
			PrintWriter script = response.getWriter();
			script.println("<script>location.href = 'org_mypage.jsp'</script>");
		}
		//로그인 실패
		else if(result == 0){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호가 틀립니다.')");
			script.println("history.back()");
			script.println("</script>");
		}
		//DB오류
		else if(result == -2){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('DB오류가 발생했습니다.')");
		script.println("history.back()");
		script.println("</script>");
		}
%>