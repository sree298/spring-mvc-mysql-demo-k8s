<%@ page contentType="text/html; charset=UTF-8" language="java" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <title>User Saved</title>
            <style>
                body {
                    text-align: center;
                    font-family: Arial, sans-serif;
                }

                .btn {
                    padding: 8px 14px;
                    background-color: #4CAF50;
                    color: white;
                    text-decoration: none;
                    border-radius: 4px;
                    margin: 5px;
                }

                .btn:hover {
                    background-color: #45a049;
                }
            </style>
        </head>

        <body>

            <h2>User Saved Successfully!</h2>

            <p><strong>Name:</strong> ${user.name}</p>
            <p><strong>Email:</strong> ${user.email}</p>
            <p><strong>Age:</strong> ${user.age}</p>

            <br>

            <a href="<c:url value='/user/form' />" class="btn">Add Another User</a>
            <a href="<c:url value='/user/list' />" class="btn">View User List</a>

        </body>

        </html>