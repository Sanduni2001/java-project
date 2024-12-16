<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    // Retrieve username from session
    HttpSession currentSession = request.getSession(false);
    String username = null;

    if (currentSession != null) {
        username = (String) currentSession.getAttribute("username");
    }
%>

<nav class="bg-[#070315]">
    <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
        <div class="flex h-16 items-center justify-between">
            <!-- Logo -->
            <div class="flex items-center">
                <a href="<%= request.getContextPath() %>/index.jsp" class="flex items-center">
                    <!-- Logo using context path -->
                    <img class="h-16 w-auto" src="<%= request.getContextPath() %>/assets/logos/logo.png" alt="Logo">
                    <span class="text-white text-lg font-semibold ml-2">ABC Cinema</span>
                </a>
            </div>

            <!-- Navigation Links -->
            <div class="hidden sm:flex space-x-4">
                <a href="<%= request.getContextPath() %>/index.jsp" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Home</a>
                <a href="<%= request.getContextPath() %>/ticket_booking.jsp" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">Buy Tickets</a>
                <a href="<%= request.getContextPath() %>/aboutus.jsp" class="text-gray-300 hover:bg-gray-700 hover:text-white px-3 py-2 rounded-md text-sm font-medium">About Us</a>
            </div>

            <!-- User Actions -->
            <div class="hidden sm:flex items-center space-x-4">
                <c:choose>
                    <c:when test="${empty username}">
                        <!-- Login Button -->
                        <a href="<%= request.getContextPath() %>/auth/login" class="text-gray-300 hover:bg-blue-800 hover:text-white px-3 py-2 rounded-md text-sm font-medium bg-blue-500">
                            Login
                        </a>
                    </c:when>
                    <c:otherwise>
                        <!-- Cart and Username -->
                        <a href="<%= request.getContextPath() %>/cancelticket.jsp" class="flex items-center">
                            <img class="h-8 w-auto mr-2" src="<%= request.getContextPath() %>/assets/logos/cart.png" alt="Cart">
                        </a>
                        <span class="text-gray-300 text-sm font-medium">Welcome, <%= username %></span>
                        <a href="<%= request.getContextPath() %>/logout" class="text-gray-300 hover:bg-red-800 hover:text-white px-3 py-2 rounded-md text-sm font-medium bg-red-500 ml-2">
                            Logout
                        </a>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </div>
</nav>