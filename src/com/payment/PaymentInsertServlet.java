package com.payment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PaymentInsertServlet")
public class PaymentInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get the details entered by the customer and save it in a variable
		String propertyname=request.getParameter("propertyname");
		String paymentid=request.getParameter("paymentid");
		String name=request.getParameter("name");
		String cardno=request.getParameter("cardno");
		String cardexpdate=request.getParameter("cardexpdate");
		String cvc=request.getParameter("cvc");
		
		boolean istrue;//to catch the result got from the model class method
		
		istrue= PaymentDButil.insertpayment(propertyname,paymentid,name,cardno, cardexpdate, cvc);
		
		//if the data was passed to the database successfully 
		if(istrue==true) {
			//redirecting from the servlet to
			RequestDispatcher dis= request.getRequestDispatcher("viewpayemnt.jsp");
			dis.forward(request, response);
		}
		//if the data wasn't passed to the database successfully 
		else {
			//redirecting from the servlet to
			RequestDispatcher dis= request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}

}
