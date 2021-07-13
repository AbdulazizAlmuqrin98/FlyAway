package com.javawebapp.model;
import org.omg.CORBA.portable.ApplicationException;

import com.javawebapp.utility.EmailMessage;
import com.javawebapp.utility.EmailUtility;
import com.javawebapp.utility.ServletUtility;
public class CheckMail {
  
  public static void main(String[] args) {
    EmailMessage msg=new EmailMessage();
    msg.setTo("bhupendra.patidar42@gmail.com");
    msg.setMessage("Hii");
    try {
      EmailUtility.sendMail(msg);
      
    }	catch (ApplicationException e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
      } catch (Exception e) {
  		// TODO Auto-generated catch block
  		e.printStackTrace();
  	}
  }
}