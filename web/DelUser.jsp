
<jsp:useBean class="Table.User" id="v"/>
<jsp:include page="Delete.jsp"/>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="java.util.List"%>
<%@page errorPage="error.jsp" %>
<%@page import="Table.User"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String uid=request.getParameter("uid");
    org.hibernate.Session s=Hib.HibDAOLayer.getSession();
    org.hibernate.Criteria c=s.createCriteria(Table.User.class);
    c.add(Restrictions.eq("uid",uid));
    List<User> data=c.list();
%>
<fieldset>
<table width="100%"align="center"border="1">
    <tr>
        <th>User ID</th>
        <th>User Name</th>
        <th>Age</th>
        <th>Gen</th>
        <th>Action</th>
    </tr>
    <%
        for(User ob: data)
        {
    %>
    <tr>
        <td><%= ob.getUid() %></td>
        <td><%= ob.getUname() %></td>
        <td><%= ob.getAge() %></td>
        <td><%= ob.getGender() %></td> 
        <td><a href="UserDeleted.jsp?uid=<%=ob.getUid()%>"onclick="return confirm('Are You Sure you Want To Delete It')"><button>Delete</button></a></td>
    </tr>
    <% } %>
</table>
</fieldset>