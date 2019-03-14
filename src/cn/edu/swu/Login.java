package cn.edu.swu;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Login extends HttpServlet
{
  public void doGet(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException
  {
      this.doPost(request,response);
  }
  public void doPost(HttpServletRequest request,HttpServletResponse response)
            throws ServletException, IOException
  {
      PrintWriter out = response.getWriter();
      String usr=request.getParameter("user");
      String pass=request.getParameter("passwd");
      System.out.println(usr);
      System.out.println(pass);
      if(usr.equals("gyl")&&pass.equals("123456"))
          out.println("<h1>Login successfully!!!</h1>");
      else
          out.println("<h1>Login failedly</h1>");
  }

}

