<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Management</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-900">

<div class="flex h-screen">
    <%-- Sidebar Include --%>
    <jsp:include page="/components/sidebar.jsp" />

    <%-- Content Section --%>
    <div class="w-full md:w-3/4 p-6 bg-white overflow-auto">
        <h1 class="text-2xl font-bold mb-6 text-center">Admin Management</h1>

        <%-- Add New Admin Button --%>
        <div class="mb-4 flex justify-end">
            <button
                    class="bg-blue-500 text-white px-4 py-2 rounded-lg hover:bg-blue-600"
                    onclick="window.location.href='<%= request.getContextPath() %>/admin/admin-management?action=add'">
                Add New Admin
            </button>
        </div>

        <%-- Admin Table --%>
        <table class="table-auto w-full border-collapse border border-gray-300">
            <thead>
            <tr class="bg-gray-200">
                <th class="border border-gray-300 px-4 py-2">ID</th>
                <th class="border border-gray-300 px-4 py-2">Username</th>
                <th class="border border-gray-300 px-4 py-2">Email</th>
                <th class="border border-gray-300 px-4 py-2">Mobile</th>
                <th class="border border-gray-300 px-4 py-2">Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:choose>
                <c:when test="${not empty admins}">
                    <c:forEach var="admin" items="${admins}">
                        <tr class="hover:bg-gray-100">
                            <td class="border border-gray-300 px-4 py-2 text-center">${admin.id}</td>
                            <td class="border border-gray-300 px-4 py-2 text-center">${admin.username}</td>
                            <td class="border border-gray-300 px-4 py-2 text-center">${admin.email}</td>
                            <td class="border border-gray-300 px-4 py-2 text-center">${admin.mobile}</td>
                            <td class="border border-gray-300 px-4 py-2 text-center">
                                    <%-- Update Button --%>
                                <a
                                        class="text-green-500  hover:text-green-900 transition duration-300 ease-in-out"
                                        onclick="window.location.href='<%= request.getContextPath() %>/admin/admin-management?action=edit&id=${admin.id}'">
                                    Update
                                </a>
                                    <%-- Delete Button --%>
                                <a
                                        class="text-red-600 hover:text-red-900 transition duration-300 ease-in-out"
                                        data-id="${admin.id}"
                                        onclick="confirmDelete(this)">
                                    Delete
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td colspan="5" class="text-center border border-gray-300 px-4 py-2">
                            No admins found.
                        </td>
                    </tr>
                </c:otherwise>
            </c:choose>
            </tbody>
        </table>
    </div>
</div>

<script>
    /**
     * Confirm delete and redirect with the correct admin ID.
     * @param {HTMLElement} button - The button element clicked for deletion.
     */
    function confirmDelete(button) {
        const adminId = button.getAttribute("data-id");
        if (confirm("Are you sure you want to delete this admin?")) {
            window.location.href = <%= request.getContextPath() %>/admin/admin-management?action=delete&id= + adminId;
        }
    }
</script>

</body>
</html>