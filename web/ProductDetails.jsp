<!DOCTYPE HTML>
<html>
<head>
    <title>Save Product</title>
    <style type="text/css">@import url(css/main.css);</style>
</head>
<body>
<div id="global">
    <h4>The product has been saved.</h4>
    <p>
    <h5>Details:</h5>
    Product Name: ${product.name}<br/>
    Description: ${product.description}<br/>
    Price: $${product.price}<br/>
    </p>
    <input type="submit" onclick="window.location='/product_list'" value="Show List"/>
    <%--<a href="product_list" >Show List</a>--%>
</div>
</body>
</html>