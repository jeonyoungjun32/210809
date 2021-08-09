<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file = "dbcon_2.jsp" %>
<%
try{
	sql="insert into movie_1 values(?,?,?,?)";
	
	ps = con.prepareStatement(sql);
	
	ps.setString(1, request.getParameter("me_id"));
	ps.setString(2, request.getParameter("me_pass"));
	ps.setString(3, request.getParameter("mo_name"));
	ps.setString(4, request.getParameter("rm_date"));
	
	ps.executeUpdate();
%>
<script>
 	alert("영화예메가 완료되었습니다.");
 	location="insert2_8.jsp";
</script>
<%
}catch(Exception e){
	%>
	<script>
	 	alert("영화예매가 완료되지않았습니다.");
	 	history.back();
	</script>
	<%
}finally{
	try{
		if(con != null) con.close();
		if(stmt != null) stmt.close();
		if(ps != null) ps.close();
		if(rs != null) rs.close();
	}catch(Exception e){
		e.printStackTrace();
	}
}
%>