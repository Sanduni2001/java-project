//package com.movieproject.controller.client;
//
//import com.movieproject.service.BookingService;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//import java.io.IOException;
//
//@WebServlet("/payment-notify")
//public class PaymentNotifyServlet extends HttpServlet {
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        int bookingId = Integer.parseInt(request.getParameter("bookingId"));
//        String paymentStatus = request.getParameter("status_code"); // '2' indicates success
//
//        if ("2".equals(paymentStatus)) {
//            // Update booking status in the database
//            new BookingService().updateBookingStatus(bookingId, "Paid");
//            System.out.println("Payment successful. Order ID: " + bookingId);
//        } else {
//            System.out.println("Payment failed. Order ID: " + bookingId);
//        }
//
//        response.setStatus(HttpServletResponse.SC_OK); // Notify PayHere that the status was received
//    }
//}
