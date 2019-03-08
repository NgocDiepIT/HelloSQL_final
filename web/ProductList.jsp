<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Phone List</title>
    <style>
        table, tr, td {
            border: 1px solid brown;
        }
    </style>
</head>
<body>
<table>
    <tr>
        <td>Name</td>
        <td>Description</td>
        <td>Price</td>
        <td>Action</td>

    </tr>
    <c:forEach items="${products}" var="product">
        <tr>
            <td>${product.name}</td>
            <td>${product.description}</td>
            <td>${product.price}</td>
            <td>
                <a href="UpdateProduct?id=${product.id}" >Edit</a>
                <a href="DeleteProduct?id=${product.id}" >Delete</a>
            </td>
        </tr>
    </c:forEach></table>
    <input type="submit" onclick="window.location='/product_input'" value="Add a product"/>
</body>
</html>