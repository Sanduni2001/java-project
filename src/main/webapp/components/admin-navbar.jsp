<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<%--%>
<%--    // Validate Admin Session--%>
<%--    session = request.getSession(false);--%>
<%--    String adminName = null;--%>
<%--    Integer adminId = null;--%>

<%--    // Check if session exists and retrieve attributes--%>
<%--    if (session != null) {--%>
<%--        Object sessionUsername = session.getAttribute("username");--%>
<%--        Object sessionAdminId = session.getAttribute("adminId");--%>

<%--        // Validate and assign attributes if they exist--%>
<%--        if (sessionUsername instanceof String) {--%>
<%--            adminName = (String) sessionUsername;--%>
<%--        }--%>
<%--        if (sessionAdminId instanceof Integer) {--%>
<%--            adminId = (Integer) sessionAdminId;--%>
<%--        }--%>
<%--    }--%>

<%--    // Redirect to login if the admin is not logged in--%>
<%--    if (adminId == null) {--%>
<%--        response.sendRedirect(request.getContextPath() + "/auth/login");--%>
<%--        return;--%>
<%--    }--%>
<%--%>--%>

<%--<nav class="bg-black text-white shadow-md">--%>
<%--    <div class="container mx-auto flex justify-between items-center py-4 px-6">--%>
<%--        <!-- Website Name -->--%>
<%--        <div class="text-2xl font-bold">--%>
<%--            <a href="<%= request.getContextPath() %>/admin/home" class="hover:text-gray-300">--%>
<%--                MyWebsite--%>
<%--            </a>--%>
<%--        </div>--%>

<%--        <!-- Admin Info -->--%>
<%--        <div class="flex items-center space-x-4">--%>
<%--            <span class="text-lg font-medium">--%>
<%--                Welcome, <%= (adminName != null && !adminName.trim().isEmpty()) ? adminName : "Admin" %>--%>
<%--            </span>--%>
<%--            <a href="<%= request.getContextPath() %>/auth/logout">--%>
<%--                <button class="bg-red-600 px-4 py-2 rounded-md hover:bg-red-700">--%>
<%--                    Log Out--%>
<%--                </button>--%>
<%--            </a>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</nav>--%>
