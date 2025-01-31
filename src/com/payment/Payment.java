package com.payment;

/*This is the com.payment model class*/ 

public class Payment {
	private String propertyname;
	private int paymentid; //paymentid is unique auto-incremented
	private String name;
	private String cardno;
	private String cardexpdate;
	private String cvc;
	
	//overloaded constructor to set values
	public Payment(String propertyname,int paymentid, String name,String cardno, String cardexpdate, String cvc) {
		this.propertyname=propertyname;
		this.paymentid = paymentid;
		this.name=name;
		this.cardno = cardno;
		this.cardexpdate = cardexpdate;
		this.cvc = cvc;
	}

	//getters for each property to return the values
	public int getPaymentid() {
		return paymentid;
	}

	public String getCardno() {
		return cardno;
	}

	public String getCardexpdate() {
		return cardexpdate;
	}

	public String getCvc() {
		return cvc;
	}

	public String getName() {
		return name;
	}
	public String getPropertyname() {
		return propertyname;
	}
}
