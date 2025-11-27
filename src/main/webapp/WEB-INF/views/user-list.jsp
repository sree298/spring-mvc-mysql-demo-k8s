<%@ page contentType="text/html; charset=UTF-8" language="java" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <title>User List</title>

            <style>
                table {
                    border-collapse: collapse;
                    width: 60%;
                    margin: 20px auto;
                }

                th,
                td {
                    padding: 10px;
                    text-align: center;
                }

                th {
                    background-color: #4CAF50;
                    color: white;
                }

                tr:hover {
                    background-color: #f2f2f2;
                }

                a.button {
                    display: inline-block;
                    padding: 8px 15px;
                    background-color: #4CAF50;
                    color: white;
                    text-decoration: none;
                    border-radius: 4px;
                }

                a.button:hover {
                    background-color: #45a049;
                }

                .center {
                    text-align: center;
                }
            </style>
        </head>

        <body>

            <h2 class="center">User List</h2>

            <div class="center">
                <a href="<c:url value='/user/form' />" class="button">Add New User</a>
            </div>

            <br />

            <table border="1">
                <tr>
                    <th>S.No</th>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Age</th>
                </tr>

                <c:choose>
                    <c:when test="${not empty users}">
                        <c:forEach var="user" items="${users}" varStatus="status">
                            <tr>
                                <td>${status.count}</td>
                                <td>${user.id}</td>
                                <td>${user.name}</td>
                                <td>${user.email}</td>
                                <td>${user.age}</td>
                            </tr>
                        </c:forEach>
                    </c:when>

                    <c:otherwise>
                        <tr>
                            <td colspan="5" style="text-align:center; color:red;">No Users Found</td>
                        </tr>
                    </c:otherwise>
                </c:choose>

            </table>

        </body>

        </html>