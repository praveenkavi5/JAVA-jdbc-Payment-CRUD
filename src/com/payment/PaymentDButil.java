package com.payment;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PaymentDButil {
    private static Connection con = null;
    private static Statement state = null;
    private static ResultSet rs = null;

    // Insert com.payment method
    public static boolean insertpayment(String propertyname, String paymentid, String name, String cardno, String cardexpdate, String cvc) {
        boolean isSuccess = false;
        PreparedStatement pstmt = null;

        try {
            con = DBConnector.getConnection();
            String sql = "INSERT INTO payment (propertyname, name, cardno, cardexpdate, cvc) VALUES (?, ?, ?, ?, ?)";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, propertyname);
            pstmt.setString(2, name);
            pstmt.setString(3, cardno);
            pstmt.setString(4, cardexpdate);
            pstmt.setString(5, cvc);

            int result = pstmt.executeUpdate();

            if (result > 0) {
                isSuccess = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return isSuccess;
    }

    // Get com.payment details method
    public static List<Payment> getPaymentDetails() {
        ArrayList<Payment> payList = new ArrayList<>();

        try {
            con = DBConnector.getConnection();
            String sql = "SELECT * FROM payment";
            state = con.createStatement();
            rs = state.executeQuery(sql);

            while (rs.next()) {
                String propertyname = rs.getString(1);
                int paymentid = rs.getInt(2);
                String name = rs.getString(3);
                String cardno = rs.getString(4);
                String cardexpdate = rs.getString(5);
                String cvc = rs.getString(6);

                Payment p1 = new Payment(propertyname, paymentid, name, cardno, cardexpdate, cvc);
                payList.add(p1);
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (state != null) state.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return payList;
    }

    // Update com.payment method
    public static boolean updatepayment(String propertyname, String paymentid, String name, String cardno, String cardexpdate, String cvc) {
        boolean isSuccess = false;
        PreparedStatement pstmt = null;

        try {
            con = DBConnector.getConnection();
            String sql = "UPDATE payment SET propertyname=?, name=?, cardno=?, cardexpdate=?, cvc=? WHERE paymentid=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, propertyname);
            pstmt.setString(2, name);
            pstmt.setString(3, cardno);
            pstmt.setString(4, cardexpdate);
            pstmt.setString(5, cvc);
            pstmt.setString(6, paymentid);

            int result = pstmt.executeUpdate();

            if (result > 0) {
                isSuccess = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return isSuccess;
    }

    // Delete com.payment method
    public static boolean deletepayment(String paymentid) {
        boolean isSuccess = false;
        PreparedStatement pstmt = null;

        try {
            con = DBConnector.getConnection();
            String sql = "DELETE FROM payment WHERE paymentid=?";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, paymentid);

            int result = pstmt.executeUpdate();

            if (result > 0) {
                isSuccess = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return isSuccess;
    }
}
