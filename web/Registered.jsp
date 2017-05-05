
<%@page import="org.hibernate.Criteria"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="Table.User"%>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean class="Table.User" id="c"/>
<jsp:setProperty name="c"  property="*"/>
<%
    String uid=request.getParameter("uid");
    String p=request.getParameter("pass");
    String cp=request.getParameter("cpass");
    
    org.hibernate.Session s=Hib.HibDAOLayer.getSession();
    
    Criteria cs=s.createCriteria(User.class);
    cs.add(Restrictions.eq("uid",uid));
    List<User>data=cs.list();
    if(data.size()>0)
    {
        RequestDispatcher rd=request.getRequestDispatcher("Reg.jsp");
        rd.include(request,response);
        out.print("<center>USERNAME ALREADY EXIST</center>");
    }
    else{
    if(p.equals(cp))
   {
       org.hibernate.Transaction t=s.beginTransaction();
    s.save(c);
    t.commit();

%>
<s:set var="msg" value="You Are Registered <a href='Login.jsp'>Click Here To Login</a>" scope="request"/>

<% }
    
    else
    {
%>
<s:set var="msg" value=" Password Doesn't match with Confirm Password, Try Again" scope="request"/>

<%}%>

<jsp:forward page="Reg.jsp"/>
<%}%>