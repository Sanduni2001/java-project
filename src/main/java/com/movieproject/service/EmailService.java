package com.movieproject.service;


import com.movieproject.utils.EmailUtility;

public class EmailService {

    public void sendVerificationEmail(String toAddress, String verificationCode) throws Exception {
        String subject = "Email Verification Code";
        String message = getStyledEmailContent("Email Verification", verificationCode, "Verify Email", "http://localhost:8080/demo/verify-code.html");
        EmailUtility.sendEmail(toAddress, subject, message);
    }

    public void sendForgotPasswordEmail(String toAddress, String resetCode) throws Exception {
        String subject = "Password Reset Code";
        String message = getStyledEmailContent("Password Reset", resetCode, "Reset Password", "http://localhost:8080/demo/reset-password.html");
        EmailUtility.sendEmail(toAddress, subject, message);
    }

    private String getStyledEmailContent(String title, String code, String actionText, String actionLink) {
        return "<!DOCTYPE html>"
                + "<html>"
                + "<head>"
                + "    <style>"
                + "        body { font-family: Arial, sans-serif; background-color: #f4f4f4; margin: 0; padding: 0; }"
                + "        .email-container { max-width: 600px; margin: 20px auto; background: white; border: 1px solid #ddd; border-radius: 5px; }"
                + "        .email-header { background-color: #007bff; color: white; padding: 20px; text-align: center; font-size: 24px; font-weight: bold; }"
                + "        .email-body { padding: 20px; }"
                + "        .email-body p { font-size: 16px; color: #333; line-height: 1.5; }"
                + "        .email-body .verification-code { font-size: 24px; font-weight: bold; color: #007bff; margin: 20px 0; text-align: center; }"
                + "        .email-body a { display: inline-block; margin-top: 20px; padding: 10px 20px; background-color: #007bff; color: white; text-decoration: none; border-radius: 5px; font-size: 16px; }"
                + "        .email-body a:hover { background-color: #0056b3; }"
                + "        .email-footer { text-align: center; padding: 10px; font-size: 12px; color: #777; background: #f9f9f9; border-top: 1px solid #ddd; }"
                + "    </style>"
                + "</head>"
                + "<body>"
                + "    <div class='email-container'>"
                + "        <div class='email-header'>" + title + "</div>"
                + "        <div class='email-body'>"
                + "            <p>Hello,</p>"
                + "            <p>We received a request for " + title.toLowerCase() + ". Please use the code below:</p>"
                + "            <div class='verification-code'>" + code + "</div>"
                + "            <a href='" + actionLink + "'>" + actionText + "</a>"
                + "            <p>If you did not request this, please ignore this email.</p>"
                + "        </div>"
                + "        <div class='email-footer'>"
                + "            &copy; 2024 Your Company. All rights reserved."
                + "        </div>"
                + "    </div>"
                + "</body>"
                + "</html>";
    }
}
