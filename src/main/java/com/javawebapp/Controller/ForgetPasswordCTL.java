package com.javawebapp.Controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.CORBA.portable.ApplicationException;

import com.javawebapp.beans.UserBeans;
import com.javawebapp.model.UserModel;
import com.javawebapp.utility.EmailMessage;
import com.javawebapp.utility.EmailUtility;
import com.javawebapp.utility.ServletUtility;
/**
 * Servlet implementation class ForgetPasswordCTL
 */
//@WebServlet(name="ForgetPasswordCTL", urlPatterns = {"/ForgetPasswordCTL"})
//@WebServlet("/ForgetPasswordCTL")
public class ForgetPasswordCTL extends HttpServlet {
  private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgetPasswordCTL() {
        super();
        // TODO Auto-generated constructor stub
    }
  /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
   */
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
    ServletUtility.forward("/jsp/forgetPassword.jsp", request, response);
  }
  /**
   * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
   */
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
    String email = request.getParameter("email").trim();
    EmailMessage emailbean = new EmailMessage();
    UserBeans user = UserModel.FindUserPassword(email);
    emailbean.setTo(email);
    emailbean.setMessage("Hii "+email+ "Your Password is: "+user.getPassword());
    try {
      
      EmailUtility.sendMail(emailbean);
      ServletUtility.setSuccessMessage("Mail has been sent successfully..", request);
      
      
    } catch (ApplicationException e) {
      // TODO Auto-generated catch block
      ServletUtility.setErrorMessage("Somting Wrong", request);
    } catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
    ServletUtility.forward("/jsp/forgetPassword.jsp",request, response);
  }
}