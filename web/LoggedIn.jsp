<jsp:useBean class="Table.User" id="can"/>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="Table.User" %>
<%@page errorPage="error.jsp" %>
<%@page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    try{
    String id=request.getParameter("uid");
    String pass=request.getParameter("pass");
    org.hibernate.Session s=Hib.HibDAOLayer.getSession();
    org.hibernate.Transaction t=s.beginTransaction();
    org.hibernate.Criteria c=s.createCriteria(User.class);
    c.add(Restrictions.eq("uid",id));
    c.add(Restrictions.eq("pass",pass));
    List<User> l=c.list();
    HttpSession sg=request.getSession(false); 
    sg.getAttribute("uid");
    sg.setAttribute("uid", id);
    sg.getAttribute("pass");
    sg.setAttribute("pass", pass);
    
    
        
           if(sg.getAttribute("uid")==id&&sg.getAttribute("pass")==pass)
           {
               if(l.size()>0)
                {
               
                
                for(User u:l)
                {
                    if(u.getRole().equals("admin"))
                    {
                        RequestDispatcher rd=request.getRequestDispatcher("Admin.jsp");
                        rd.include(request, response);
                        //out.print("Welcome Admin");
                    }
                    else               
                    {
                        RequestDispatcher rd=request.getRequestDispatcher("User.jsp");
                        rd.include(request, response);
                        //out.print("<center><font color='green'><h3>Welcome User</center>");
                    }
                }
            }
            else
                {
                    RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
                    rd.include(request, response);
                    out.print("<center><font color='red'><h3>Wrong Id Or Password</h3></center>");
                }
    }
    else
        out.print("You are not a user\n<a href=Login.jsp>click here to back login page</a>");
    }catch(Exception e)
    {
        RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
        rd.include(request, response);
        out.print("<center><font color='red'>Please insert valid values.</center>"); 
    }
    
%>