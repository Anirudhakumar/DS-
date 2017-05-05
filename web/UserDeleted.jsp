<%@page errorPage="error.jsp" %>
<%@page import="Table.User"%>
<%@page import="org.hibernate.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    String uid=request.getParameter("uid");
    Session s=Hib.HibDAOLayer.getSession();
    Transaction t=s.beginTransaction();
    User temp=new User();
    temp.setUid(uid);
    s.delete(temp);
    t.commit();
%>



<c:set  var="msg" value="USER DELETED SUCCESSFULLY!!" scope="request"/>

<jsp:include page="Delete.jsp"/>
