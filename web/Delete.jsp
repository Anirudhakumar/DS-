<%@page import="java.util.List"%>
<%@page errorPage="error.jsp" %>
<%@page import="Table.User"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body style="background-color:powderblue;">
<center><h1><font color="red">DELETE USER FROM ONLINE DATING PLATFORM</font></h1></center>
<hr><br><br>

<%
    org.hibernate.Session s=Hib.HibDAOLayer.getSession();
    org.hibernate.Transaction t=s.beginTransaction();
    org.hibernate.Criteria c=s.createCriteria(Table.User.class);
    List<User> data=c.list();
%>
<form action="DelUser.jsp" align="center" method="post">
    <pre>
     USER ID   : <select name="uid">
                        <option value="0">--------------------select-----------------------------</option>
                        <%
                            for(User ob:data)
                            {
                        %>
                        <option value="<%=ob.getUid()%>"><%=ob.getUid()%></option>  
                        <% } %>
                        </select>

                  <input type="submit" class="button red" value="SELECT ID" name="submit">
    </pre>
</form>
                        
                        
<c:if test="${requestScope.msg ne null}">
    <script>
        alert('${requestScope.msg}')
    </script>    
</c:if>
     <center><a href="Admin.jsp">CLICK HERE TO BACK ADMIN PAGE</a></center>
</body>>