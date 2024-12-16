package com.movieproject.controller.admin;


import com.movieproject.model.Review;
import com.movieproject.model.User;
import com.movieproject.service.ReviewService;
import com.movieproject.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/admin/manage-reviews")
public class AdminReviewController extends HttpServlet {

    private ReviewService reviewService=new ReviewService();
    private UserService userService = new UserService();

    @Override
    public void init() throws ServletException {
        reviewService = new ReviewService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Fetch all reviews

        List<Review> reviews = reviewService.getAllReviews();
        int userId = reviews.get(0).getUserId();
        User user = userService.getUserById(userId);

        if (reviews == null || reviews.isEmpty()) {
            // Handle the case when no reviews are found
            request.setAttribute("message", "No reviews found.");
        } else {


            // Set reviews as a request attribute
        request.setAttribute("reviews", reviews);
        request.setAttribute("user", user);


        // Forward to admin review management JSP
        request.getRequestDispatcher("/views/admin/manage-reviews.jsp").forward(request, response);
    }
    }

}