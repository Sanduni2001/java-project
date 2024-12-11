<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Panel</title>
        <script src="https://cdn.tailwindcss.com"></script>
    </head>
    <body class="bg-gray-100 text-gray-800">
        <nav>
            <jsp:include page="/components/navbar.jsp" />
        </nav>
        <div class="flex h-screen">
            <%--    --Sidebar----%>
            <aside class="w-1/4 bg-gray-200 p-4 flex flex-col justify-between">
                <div>
                    <h1 class="text-2xl font-bold mb-12">Admin Panel</h1>
                    <ul class="space-y-8">
                        <li>
                            <a href="#" onclick="loadPage('admin-carousel.jsp')" class="text-black font-semibold hover:text-blue-600">Carousal</a>
                        </li>
                        <li>
                            <a href="#" onclick="loadPage('admin-nowshowing.jsp')" class="text-black font-semibold hover:text-blue-600">Now Showing</a>
                        </li>
                        <li>
                            <a href="#" onclick="loadPage('admin-comingsoon.jsp')" class="text-black font-semibold hover:text-blue-600">Coming Soon</a>
                        </li>
                    </ul>
                </div>
                <div>
                    <a href="index.jsp">
                        <button class="w-full bg-red-600 text-white py-2 rounded-lg hover:bg-red-700">Log out</button>
                    </a>
                </div>
            </aside>

            <%--    --Content Area----%>
            <div class="w-3/4 bg-white p-4 overflow-auto">
                <iframe id="contentFrame" src="admin-carousel.jsp" class="w-full h-full" frameborder="0"></iframe>
            </div>
        </div>
        <footer>
            <jsp:include page="/components/footer.jsp" />
        </footer>

        <script>
            function loadPage(page) {
                document.getElementById('contentFrame').src = page;
            }
        </script>
    </body>
</html>
