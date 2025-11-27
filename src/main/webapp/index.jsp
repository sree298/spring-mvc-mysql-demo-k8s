<%@ page contentType="text/html; charset=UTF-8" language="java" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <title>Home</title>
            <style>
                body {
                    text-align: center;
                    font-family: Arial, sans-serif;
                }

                h2 {
                    margin-top: 50px;
                }

                .btn {
                    margin: 10px;
                    padding: 10px 20px;
                    display: inline-block;
                    background-color: #4CAF50;
                    color: white;
                    text-decoration: none;
                    border-radius: 5px;
                    font-size: 16px;
                }

                .btn:hover {
                    background-color: #45a049;
                }
            </style>
        </head>

        <body>

            <h2>Spring MVC + MySQL Demo Application</h2>

            <br />

            <a href="<c:url value='/user/form' />" class="btn">Add New User</a>
            <a href="<c:url value='/user/list' />" class="btn">View Users List</a>

        </body>

        </html>