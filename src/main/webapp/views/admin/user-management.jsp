<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Management</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-900">

<div class="flex h-screen">
    <%-- Sidebar Include --%>
    <jsp:include page="/components/sidebar.jsp" />

    <%-- Content Section --%>
    <div class="w-full md:w-3/4 p-6 bg-white overflow-auto">
        <h1 class="text-2xl font-bold mb-6 text-center">User Management</h1>

        <table class="table-auto w-full border-collapse border border-gray-300">
            <thead>
            <tr class="bg-gray-200">
                <th class="border border-gray-300 px-4 py-2">ID</th>
                <th class="border border-gray-300 px-4 py-2">Username</th>
                <th class="border border-gray-300 px-4 py-2">Email</th>
                <th class="border border-gray-300 px-4 py-2">Mobile</th>
                <th class="border border-gray-300 px-4 py-2">Role</th>
                <th class="border border-gray-300 px-4 py-2">Status</th>
            </tr>
            </thead>
            <tbody>
            <%-- Check if there are users --%>
            <c:choose>
                <c:when test="${not empty clients}">
                    <c:forEach var="user" items="${clients}">
                        <tr class="hover:bg-gray-100">
                            <td class="border border-gray-300 px-4 py-2 text-center">${user.id}</td>
                            <td class="border border-gray-300 px-4 py-2 text-center">${user.username}</td>
                            <td class="border border-gray-300 px-4 py-2 text-center">${user.email}</td>
                            <td class="border border-gray-300 px-4 py-2 text-center">${user.mobile}</td>
                            <td class="border border-gray-300 px-4 py-2 text-center">${user.role}</td>
                            <td class="border border-gray-300 px-4 py-2 text-center">
                                <c:choose>
                                    <c:when test="${user.isActive}">
                                        <span class="text-green-500">Active</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="text-red-500">Inactive</span>
                                    </c:otherwise>

                                </c:choose>
                            </td>
                        </tr>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td colspan="6" class="text-center border border-gray-300 px-4 py-2">
                            No users found.
                        </td>
                    </tr>
                </c:otherwise>
            </c:choose>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>