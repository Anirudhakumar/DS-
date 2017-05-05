
<%@page import="Table.User"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" %>
<jsp:useBean class="Table.User" id="c"/>
<jsp:setProperty name="c"  property="*"/>
<%
    String uid=request.getParameter("uid");
    String name=request.getParameter("uname");
    String gender=request.getParameter("gender");
    String fbid=request.getParameter("fbid");
    String instaid=request.getParameter("instaid");
    String about=request.getParameter("about");
    String email=request.getParameter("email");
    String phno=request.getParameter("phno");
    String q1=request.getParameter("q1");
    String q2=request.getParameter("q2");
    String q3=request.getParameter("q3");
    String q4=request.getParameter("q4");
    String q5=request.getParameter("q5");
    String q6=request.getParameter("q6");
    String q7=request.getParameter("q7");
    String q8=request.getParameter("q8");
    String q9=request.getParameter("q9");
    String q10=request.getParameter("q10");
    
    org.hibernate.Session s=Hib.HibDAOLayer.getSession();
    org.hibernate.Transaction t=s.beginTransaction();
    User ob=(User)s.get(User.class, uid);
   ob.setGender(gender);
   ob.setFbid(fbid);
   ob.setAbout(about);
   ob.setEmail(email);
   ob.setInstaid(instaid);
   ob.setUname(name);
   ob.setPhno(phno);
   ob.setQ1(q1);
   ob.setQ2(q2);
   ob.setQ3(q3);
   ob.setQ4(q4);
   ob.setQ5(q5);
   ob.setQ6(q6);
   ob.setQ7(q7);
   ob.setQ8(q8);
   ob.setQ9(q9);
   ob.setQ10(q10);
    s.update(ob);
    t.commit();
    
   
%>
<s:set var="msg" value="Youre Profile Is Created Successfully<a href='Login.jsp'>Click to Login.</a>" scope="request"/>
<jsp:forward page="Update.jsp"/>
