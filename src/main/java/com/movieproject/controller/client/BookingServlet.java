package com.movieproject.controller.client;

import com.movieproject.model.*;
import com.movieproject.service.BookingService;
import com.movieproject.service.EmailService;
import com.movieproject.service.MovieManagementService;
import com.movieproject.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet("/booking")
public class BookingServlet extends HttpServlet {
    private final MovieManagementService movieService = new MovieManagementService();
    private final BookingService bookingService = new BookingService();
    private  final EmailService emailService = new EmailService();
    private  final UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("userId") == null) {
            response.sendRedirect("auth/login");
            return;
        }

        Integer userId = (Integer) session.getAttribute("userId");
        if (userId == null) {
            response.sendRedirect("auth/login");
            return;
        }

        String action = request.getParameter("action");
        if (action == null || action.isEmpty()) {
            System.out.println("action is empty");
            response.sendRedirect("error.jsp");
            return;
        }

        switch (action) {
            case "my-booking":
                forwardToList(request, response, userId);
                break;
            case "delete":
                deleteBooking(request, response);
                break;
            case "booking":
                handleDetails(request, response);
                break;
            default:
                response.sendRedirect("error.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("create".equals(action)) {
            createBooking(request, response);
        } else {
            response.sendRedirect("error.jsp");
        }
    }

    private void createBooking(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session == null || session.getAttribute("userId") == null) {
            response.sendRedirect("views/auth/login.jsp");
            return;
        }

        try {
            // Fetch parameters from request
            int userId = (Integer) session.getAttribute("userId");
            int movieId = Integer.parseInt(request.getParameter("movieId"));
            String showDate = request.getParameter("showDate");
            String showTime = request.getParameter("showTime");
            int numberOfSeats = Integer.parseInt(request.getParameter("numberOfSeats"));
            double totalPrice = Double.parseDouble(request.getParameter("totalPrice"));

            // Print inputs for debugging
            System.out.println("UserId: " + userId);
            System.out.println("MovieId: " + movieId);
            System.out.println("ShowDate: " + showDate);
            System.out.println("ShowTime: " + showTime);
            System.out.println("NumberOfSeats: " + numberOfSeats);
            System.out.println("TotalPrice: " + totalPrice);

            // Create Booking object
            Booking booking = new Booking();
            booking.setUserId(userId);
            booking.setMovieId(movieId);
            booking.setShowDate(showDate);
            booking.setShowTime(showTime);
            booking.setNumberOfSeats(numberOfSeats);
            booking.setTotalPrice(totalPrice);

            // Save booking
            if (bookingService.createBooking(booking)) {
                request.getSession().setAttribute("success", "Booking successful!");
                User user = userService.getUserById(userId);
                String email = user.getEmail();
                Movie movie = movieService.getMovieById(movieId);
                String movieName = movie.getMovieName();
                emailService.sendBookingConfirmationEmail(email, movieName);
                response.sendRedirect(request.getContextPath() + "/pay-now");
            } else {
                request.setAttribute("error", "Failed to create booking.");
                request.getRequestDispatcher("/error.jsp").forward(request, response);
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
            request.setAttribute("error", "Invalid input. Please check your details.");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "An unexpected error occurred. Please try again.");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }


    private void forwardToList(HttpServletRequest request, HttpServletResponse response, int userId) throws ServletException, IOException {
        // Fetch user bookings
        List<Booking> bookings = bookingService.getAllBookingsByUserId(userId);

        // Check if the bookings list is empty
        if (bookings == null || bookings.isEmpty()) {
            // Set an attribute to display a message on the JSP
            request.setAttribute("message", "You have no bookings yet.");
            // Forward to the bookings JSP without any bookings
            request.getRequestDispatcher("/views/client/user-bookings.jsp").forward(request, response);
            return;
        }

        // Get the first booking's movie details
        int movieId = bookings.get(0).getMovieId();
        Movie movie = movieService.getMovieById(movieId);

        // Pass data to the JSP
        request.setAttribute("bookings", bookings);
        request.setAttribute("movie", movie);
        request.getRequestDispatcher("/views/client/user-bookings.jsp").forward(request, response);
    }


    private void handleDetails(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int movieId = Integer.parseInt(request.getParameter("movieId"));
            int showTimeId = Integer.parseInt(request.getParameter("showTimeId"));
            int showDateId = Integer.parseInt(request.getParameter("showDateId"));

            System.out.println("Movie ID: " + movieId);
            System.out.println("Show Time ID: " + showTimeId);
            System.out.println("Show Date ID: " + showDateId);

            Movie movie = movieService.getMovieById(movieId);
            ShowTime showTime = movieService.getShowTimeById(showTimeId);
            ShowDate date = movieService.getShowDateById(showDateId);

            if (movie == null || showTime == null) {
                request.setAttribute("error", "Movie or Show Time not found.");
                request.getRequestDispatcher("/error.jsp").forward(request, response);
                return;
            }

            if (date == null) {
                request.setAttribute("error", "Show Date not found.");
                request.getRequestDispatcher("/error.jsp").forward(request, response);
                return;
            }

            System.out.println("Fetched Movie: " + movie.getMovieName());
            System.out.println("Fetched Show Time: " + showTime.getShowTime());
            System.out.println("Fetched Show Date: " + date.getShowDate());

            request.setAttribute("movie", movie);
            request.setAttribute("showDate", date);
            request.setAttribute("showTime", showTime);
            request.getRequestDispatcher("/views/client/booking.jsp").forward(request, response);

        } catch (NumberFormatException e) {
            System.out.println("NumberFormatException: Invalid input for ID.");
            request.setAttribute("error", "Invalid ID format.");
            request.getRequestDispatcher("/error.jsp").forward(request, response);
        }
    }

    private void deleteBooking(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);

        try {
            // Step 1: Verify session and user ID
            if (session == null || session.getAttribute("userId") == null) {
                response.sendRedirect(request.getContextPath() + "/auth/login.jsp");
                return;
            }

            int userId = (Integer) session.getAttribute("userId");
            System.out.println("User ID from session: " + userId);

            // Step 2: Retrieve and validate the booking ID from request
            String bookingIdParam = request.getParameter("bookingId");
            if (bookingIdParam == null || bookingIdParam.isEmpty()) {
                response.sendRedirect(request.getContextPath() + "/error.jsp?message=Invalid Booking ID");
                return;
            }

            int bookingId = Integer.parseInt(bookingIdParam);
            System.out.println("Booking ID to delete: " + bookingId);

            // Step 3: Fetch booking details before deletion
            Booking booking = bookingService.getBookingById(bookingId);
            if (booking == null) {
                System.out.println("Booking not found for ID: " + bookingId);
                response.sendRedirect(request.getContextPath() + "/error.jsp?message=Booking not found");
                return;
            }

            // Fetch movie details
            Movie movie = movieService.getMovieById(booking.getMovieId());
            String movieName = (movie != null) ? movie.getMovieName() : "Unknown Movie";
            System.out.println("Movie Name: " + movieName);

            // Step 4: Delete the booking
            if (bookingService.deleteBooking(bookingId)) {
                // Fetch user email
                User user = userService.getUserById(userId);
                if (user == null) {
                    System.out.println("User not found for ID: " + userId);
                    response.sendRedirect(request.getContextPath() + "/error.jsp?message=User not found");
                    return;
                }

                String email = user.getEmail();
                System.out.println("User Email: " + email);

                // Step 5: Send cancellation email
                emailService.sendBookingCancellationEmail(email, movieName);
                System.out.println("Booking cancellation email sent successfully to " + email);

                // Redirect to "my-booking" page
                response.sendRedirect(request.getContextPath() + "/booking?action=my-booking&message=Booking deleted successfully");
            } else {
                System.out.println("Failed to delete booking with ID: " + bookingId);
                response.sendRedirect(request.getContextPath() + "/error.jsp?message=Unable to delete booking");
            }

        } catch (NumberFormatException e) {
            System.out.println("Invalid Booking ID format.");
            response.sendRedirect(request.getContextPath() + "/error.jsp?message=Invalid Booking ID Format");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect(request.getContextPath() + "/error.jsp?message=Unexpected Error Occurred");
        }
    }


}