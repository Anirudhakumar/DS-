<%@page import="org.hibernate.criterion.Restrictions"%>
<link rel="stylesheet" href="res/Site.css">
<%@page import="java.util.List"%>
<%@page import="Hib.HibDAOLayer"%>
<%@page errorPage="error.jsp" %>
<%@page import="Table.User"%>
<%@page import="org.hibernate.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
@import "compass/css3";

@import "compass/css3";
@import url(http://fonts.googleapis.com/css?family=Patua+One|Open+Sans);

* { 
  -moz-box-sizing: border-box; 
  -webkit-box-sizing: border-box; 
	box-sizing: border-box; 
}

body {
  background:#353a40;
}

table {
  border-collapse: separate;
  background:#fff;
  @include border-radius(5px);
  margin:50px auto;
  @include box-shadow(0px 0px 5px rgba(0,0,0,0.3));
}

thead {
  @include border-radius(5px);
}

thead th {
  font-family: 'Patua One', cursive;
  font-size:16px;
  font-weight:400;
  color:#fff;
  @include text-shadow(1px 1px 0px rgba(0,0,0,0.5));
  text-align:left;
  padding:20px;
  @include background-image(linear-gradient(#646f7f, #4a5564));
  border-top:1px solid #858d99;
  
  &:first-child {
   @include border-top-left-radius(5px); 
  }

  &:last-child {
    @include border-top-right-radius(5px); 
  }
}

tbody tr td {
  font-family: 'Open Sans', sans-serif;
  font-weight:400;
  color:#5f6062;
  font-size:13px;
  padding:20px 20px 20px 20px;
  border-bottom:1px solid #e0e0e0;
  
}

tbody tr:nth-child(2n) {
  background:#f0f3f5;
}

tbody tr:last-child td {
  border-bottom:none;
  &:first-child {
    @include border-bottom-left-radius(5px);
  }
  &:last-child {
    @include border-bottom-right-radius(5px);
  }
}

tbody:hover > tr td {
  @include opacity(0.5);
  
  /* uncomment for blur effect */
  /* color:transparent;
  @include text-shadow(0px 0px 2px rgba(0,0,0,0.8));*/
}

tbody:hover > tr:hover td {
  @include text-shadow(none);
  color:#2d2d2d;
  @include opacity(1.0);
}

</style>
<body background="res/viewcan1.jpg" style="background-size: 89%">
<%
     String uid=request.getParameter("uid");
    Session s=HibDAOLayer.getSession();
    Transaction t=s.beginTransaction();
    Criteria cs=s.createCriteria(User.class);
    cs.add(Restrictions.eq("uid",uid));
    List<User>data=cs.list();
%>

<br><br><br>
<center><h4>YOUR PROFILE:</h4></center>
<table width="100%" class="gridalter" align="center" style="border-collapse:collapse" border="1"> 
    <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Sex</th>
            <th>Age</th>
            <th>Fbid</th>
            <th>instaid</th>
            <th>Email</th>
            <th>About</th>
            <th>Mob No.</th>
        </tr>
    </thead>
    <tbody>
        <tr>
           <%
        for(User ob: data)
        {
    %>
    <tr>
        <td><%= ob.getUid()%></td>
        <td><%= ob.getUname()%></td>
        <td><%= ob.getGender()%></td>
        <td><%= ob.getAge() %></td>
        <td><%= ob.getFbid()%></td>
        <td><%= ob.getInstaid()%></td>
        <td><%=ob.getEmail()%></td>
        <td><%=ob.getAbout()%></td>
        <td><%=ob.getPhno()%></td>
    </tr>
        </tr>
        
    </tbody>
    <% } %>
</table>

