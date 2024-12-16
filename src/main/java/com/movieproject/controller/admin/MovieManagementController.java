package com.movieproject.controller.admin;

import com.movieproject.model.Movie;
import com.movieproject.model.ShowDate;
import com.movieproject.model.ShowTime;
import com.movieproject.service.MovieManagementService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import java.util.List;

@WebServlet(urlPatterns = {
        "/admin/movie-management",
        "/admin/movie-management/addMovie",
        "/admin/movie-management/addDatesTimes",
        "/admin/movie-management/deleteMovie",
        "/admin/movie-management/addShowTime"
})
@MultipartConfig
public class MovieManagementController extends HttpServlet {

    private final MovieManagementService movieService = new MovieManagementService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "listMovies";
        }
        switch (action) {
            case "addMovie":
                forwardToPage(request, response, "/views/admin/add-movie.jsp");
                break;
            case "addDatesTimes":
                handleAddDatesTimes(request, response);
                break;
            case "deleteMovie":
                handleDeleteMovie(request, response);
                break;
            default:
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid action");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action == null) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid action");
            return;
        }

        switch (action) {
            case "addMovie":
                addMovie(request, response);
                break;
            case "addDatesTimes":
                processAddDatesTimes(request, response);
                break;
            case "deleteMovie":
                deleteMovie(request, response);
                break;
            case "addShowTime":
                processAddShowTime(request, response);
                break;
            default:
                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid action");
        }
    }

    private void forwardToPage(HttpServletRequest request, HttpServletResponse response, String path) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher(path);
        dispatcher.forward(request, response);
    }

    private void addMovie(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String movieName = request.getParameter("movieName");
        String description = request.getParameter("description");
        String releaseDate = request.getParameter("releaseDate");
        String directorName = request.getParameter("directorName");
        String musicBy = request.getParameter("musicBy");
        String produceBy = request.getParameter("produceBy");
        String movieStatus = request.getParameter("movieStatus");
        double ticketPrice = 0;
        String imagePath = "/images/default_movie.png"; // Initialize with the default image
        try {
            ticketPrice = Double.parseDouble(request.getParameter("ticketPrice"));
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Invalid ticket price format");
            forwardToPage(request, response, "/views/admin/add-movie.jsp");
            return;
        }


        try {
            imagePath = uploadImage(request);
        } catch (IOException | ServletException e) {
            request.setAttribute("error", "Error uploading image: " + e.getMessage());
            forwardToPage(request, response, "/views/admin/add-movie.jsp");
            return;
        }


        Movie movie = new Movie(0, movieName, description, releaseDate, directorName, musicBy, produceBy, ticketPrice, imagePath, movieStatus);

        if (movieService.addMovie(movie)) {
            response.sendRedirect(request.getContextPath() + "/admin/movie-management?action=addDatesTimes&movieId=" + movie.getMovieId());
        } else {
            request.setAttribute("error", "Failed to add movie");
            forwardToPage(request, response, "/views/admin/add-movie.jsp");
        }
    }

    private String uploadImage(HttpServletRequest request) throws IOException, ServletException {
        Part filePart = request.getPart("image");
        if (filePart == null || filePart.getSize() == 0) {
            return "/images/default_movie.png"; // Return a default image path if no file is uploaded
        }

        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        String uploadPath = request.getServletContext().getRealPath("/") + "uploadsImg";

        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs(); // Make sure the directory exists
        }

        String filePath = uploadPath + File.separator + fileName;
        try (InputStream inputStream = filePart.getInputStream();
             FileOutputStream outputStream = new FileOutputStream(filePath)) {
            byte[] buffer = new byte[1024];
            int bytesRead;
            while ((bytesRead = inputStream.read(buffer)) != -1) {
                outputStream.write(buffer, 0, bytesRead);
            }
        } catch (IOException e) {
            System.err.println("Error uploading file: " + e.getMessage());
            throw e; // Re-throw the exception to be handled by calling method
        }

        return  fileName;
    }


    private void handleAddDatesTimes(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int movieId;
        try {
            movieId = Integer.parseInt(request.getParameter("movieId"));
        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid Movie ID");
            return;
        }
        List<ShowDate> showDates = movieService.getShowDatesByMovieId(movieId);
        request.setAttribute("movieId", movieId);
        request.setAttribute("showDates", showDates); // Load existing show dates and times
        forwardToPage(request, response, "/views/admin/add-dates-times.jsp");
    }

    private String convertTo24HourFormat(String time) {
        try {
            java.text.SimpleDateFormat inFormat = new java.text.SimpleDateFormat("hh:mm a");
            java.text.SimpleDateFormat outFormat = new java.text.SimpleDateFormat("HH:mm:ss");
            return outFormat.format(inFormat.parse(time));
        } catch (Exception e) {
            e.printStackTrace();
            return null; // Return null if parsing fails
        }
    }

    private void processAddDatesTimes(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int movieId;
        String showDate = request.getParameter("showDate");
        String[] selectedTimes = request.getParameterValues("showTimes");
        ShowDate showDateObj = null;
        try {
            movieId = Integer.parseInt(request.getParameter("movieId"));
        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid Movie ID");
            return;
        }


        if (selectedTimes == null || selectedTimes.length == 0) {
            request.setAttribute("error", "Please select at least one show time.");
            handleAddDatesTimes(request, response);
            return;
        }


        try {
            showDateObj = new ShowDate(0, movieId, showDate);

        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid Show Date ID");
            return;
        }


        if (movieService.addShowDate(showDateObj)) {
            for (String time : selectedTimes) {
                String convertedTime = convertTo24HourFormat(time);
                if (convertedTime != null) {
                    ShowTime showTimeObj = new ShowTime(0, showDateObj.getShowDateId(), convertedTime);
                    movieService.addShowTime(showTimeObj);
                }
            }
            response.sendRedirect(request.getContextPath() + "/admin/movie-management?action=addDatesTimes&movieId=" + movieId);
        } else {
            request.setAttribute("error", "Failed to add show date and times.");
            handleAddDatesTimes(request, response);
        }
    }


    private void handleDeleteMovie(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int movieId;
        try {
            movieId = Integer.parseInt(request.getParameter("movieId"));
        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid Movie ID");
            return;
        }
        Movie movie = movieService.getMovieById(movieId);
        if (movie == null) {
            response.sendError(HttpServletResponse.SC_NOT_FOUND, "Movie Not Found");
            return;
        }
        request.setAttribute("movie", movie);
        forwardToPage(request, response, "/views/admin/admin-home.jsp");
    }

    private void deleteMovie(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int movieId;
        try {
            movieId = Integer.parseInt(request.getParameter("movieId"));
        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid Movie ID");
            return;
        }

        if (movieService.deleteMovie(movieId)) {
            response.sendRedirect(request.getContextPath() + "/admin/home");

        } else {
            request.setAttribute("errorMessage", "Failed to delete movie.");
            handleDeleteMovie(request, response);
        }
    }

    private void processAddShowTime(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int movieId = 0;
        String showDate = request.getParameter("showDate");
        String[] selectedTimes = request.getParameterValues("showTimes");
        ShowDate showDateObj = null;
        try {
            movieId = Integer.parseInt(request.getParameter("movieId"));
        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid Movie ID");
            return;
        }
        if (selectedTimes == null || selectedTimes.length == 0) {
            request.setAttribute("error", "Please select at least one show time.");
            handleAddDatesTimes(request, response);
            return;
        }


        try {
            showDateObj = new ShowDate(0, movieId, showDate);
        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid Show Date ID");
            return;
        }

        if (movieService.addShowDate(showDateObj)) {
            for (String time : selectedTimes) {
                String convertedTime = convertTo24HourFormat(time);
                if (convertedTime != null) {
                    ShowTime showTimeObj = new ShowTime(0, showDateObj.getShowDateId(), convertedTime);
                    movieService.addShowTime(showTimeObj);
                }
            }
            response.sendRedirect(request.getContextPath() + "/admin/movie-management?action=addDatesTimes&movieId=" + movieId);
        } else {
            request.setAttribute("error", "Failed to add show date and times.");
            handleAddDatesTimes(request, response);
        }
    }

}