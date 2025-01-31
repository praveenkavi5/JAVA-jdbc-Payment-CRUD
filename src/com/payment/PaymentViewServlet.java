package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PaymentViewServlet")
public class PaymentViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//get the com.payment details to display it 
			List<Payment> paydetails= PaymentDButil.getPaymentDetails();
			request.setAttribute("paydetails",paydetails);

		}catch (Exception e) {
			e.printStackTrace();
		}
		//redirecting from the servlet to
		RequestDispatcher dis= request.getRequestDispatcher("paymentaccount.jsp");
		dis.forward(request, response);
	}

}
