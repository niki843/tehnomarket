<html class="no-js" lang=""><%@ taglib prefix="c"
	uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Product</title>
</head>
<body>

	</h1>
	<img src="${product.getPicture()}">

	<table id="box-table-a" border="solid">

		<tr>
			<th>Model :</th>
			<td>${product.getModel()}</td>
		</tr>
		<tr>
			<th>Type :</th>
			<td>${product.getProdct_type()}</td>
		</tr>
		<tr>
			<th>Name :</th>
			<td>${product.getName()}</td>
		</tr>
		<tr>
			<th>Art number :</th>
			<td>${product.getArt_number()}</td>
		</tr>
		<tr>
			<th>Info :</th>
			<td>${product.getInfo()}</td>
		</tr>
		<tr>
			<th>UpperType :</th>
			<td>${product.getUpperType()}</td>
		</tr>
		<tr>
			<th>Price :</th>
			<td>${product.getPrice()}</td>
		</tr>

	</table>

	<form class="orders" action="" method="post">
		<input type="submit" name="addToCart" id="addToCart"
			value="Add To Cart"></input>
</body>
</html>
