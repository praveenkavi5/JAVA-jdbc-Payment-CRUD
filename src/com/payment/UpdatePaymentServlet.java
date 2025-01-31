package com.payment;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/UpdatePaymentServlet")
public class UpdatePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String propertyname= request.getParameter("propertyname");
		String paymentid=request.getParameter("paymentid");
		String name=request.getParameter("name");
		String cardno=request.getParameter("cardno");
		String cardexpdate=request.getParameter("cardexpdate");
		String cvc=request.getParameter("cvc");

		// Debugging: Print out the values
		System.out.println("Property Name: " + propertyname);
		System.out.println("Payment ID: " + paymentid);
		System.out.println("Customer Name: " + name);
		System.out.println("Card Number: " + cardno);
		System.out.println("Expiry Date: " + cardexpdate);
		System.out.println("CVC: " + cvc);

		boolean istrue;
		istrue = PaymentDButil.updatepayment(propertyname, paymentid, name, cardno, cardexpdate, cvc);

		if (istrue) {
			RequestDispatcher dis = request.getRequestDispatcher("viewpayemnt.jsp");
			dis.forward(request, response);
		} else {
			// Debugging: Log failure
			System.out.println("Payment update failed in database.");
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}
}
