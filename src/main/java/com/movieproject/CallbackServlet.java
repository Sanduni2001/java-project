//package com.movieproject;
//
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//
//import java.io.BufferedReader;
//import java.io.IOException;
//import java.io.InputStreamReader;
//import java.io.OutputStream;
//import java.net.HttpURLConnection;
//import java.net.URL;
//import java.util.Map;
//
//@WebServlet("/callback")
//public class CallbackServlet extends HttpServlet {
//    private static final String CLIENT_ID = "463424559278-8t5i7ps358estth7m195smafcigdepng.apps.googleusercontent.com";
//    private static final String CLIENT_SECRET = "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";
//    private static final String REDIRECT_URI = "http://localhost:8080/movie-booking/callback";
//    private static final String TOKEN_URL = "https://oauth2.googleapis.com/token";
//    private static final String USER_INFO_URL = "https://www.googleapis.com/oauth2/v2/userinfo";
//
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        String code = request.getParameter("code");
//
//        if (code == null || code.isEmpty()) {
//            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Authorization code is missing.");
//            return;
//        }
//
//        try {
//            // Exchange code for an access token
//            String tokenResponse = sendPostRequest(TOKEN_URL, Map.of(
//                    "code", code,
//                    "client_id", CLIENT_ID,
//                    "client_secret", CLIENT_SECRET,
//                    "redirect_uri", REDIRECT_URI,
//                    "grant_type", "authorization_code"
//            ));
//            JSONObject tokenJson = new JSONObject(tokenResponse);
//            String accessToken = tokenJson.getString("access_token");
//
//            // Get user info
//            String userInfoResponse = sendGetRequest(USER_INFO_URL, "Bearer " + accessToken);
//            JSONObject userInfo = new JSONObject(userInfoResponse);
//
//            String email = userInfo.optString("email");
//            String name = userInfo.optString("name");
//            String picture = userInfo.optString("picture");
//
//            // Store user info in the session
//            HttpSession session = request.getSession();
//            session.setAttribute("email", email);
//            session.setAttribute("name", name);
//            session.setAttribute("picture", picture);
//
//            // Redirect to user dashboard or home page
//            response.sendRedirect("dashboard.jsp");
//        } catch (Exception e) {
//            e.printStackTrace();
//            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while processing the callback.");
//        }
//    }
//
//    private String sendPostRequest(String url, Map<String, String> params) throws IOException {
//        URL endpoint = new URL(url);
//        HttpURLConnection connection = (HttpURLConnection) endpoint.openConnection();
//        connection.setRequestMethod("POST");
//        connection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
//        connection.setDoOutput(true);
//
//        StringBuilder postData = new StringBuilder();
//        for (Map.Entry<String, String> param : params.entrySet()) {
//            if (postData.length() != 0) postData.append('&');
//            postData.append(param.getKey()).append('=').append(param.getValue());
//        }
//
//        try (OutputStream os = connection.getOutputStream()) {
//            os.write(postData.toString().getBytes());
//        }
//
//        try (BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()))) {
//            StringBuilder response = new StringBuilder();
//            String line;
//            while ((line = reader.readLine()) != null) {
//                response.append(line);
//            }
//            return response.toString();
//        }
//    }
//
//    private String sendGetRequest(String url, String authorizationHeader) throws IOException {
//        URL endpoint = new URL(url);
//        HttpURLConnection connection = (HttpURLConnection) endpoint.openConnection();
//        connection.setRequestMethod("GET");
//        connection.setRequestProperty("Authorization", authorizationHeader);
//
//        try (BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()))) {
//            StringBuilder response = new StringBuilder();
//            String line;
//            while ((line = reader.readLine()) != null) {
//                response.append(line);
//            }
//            return response.toString();
//        }
//    }
//}
