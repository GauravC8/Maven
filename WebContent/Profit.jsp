<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
    <HEAD>
        <TITLE>Product price list</TITLE>
    </HEAD>
    <BODY>
        <H1 align="center">Welcome to Shop Stop</H1>
        <TABLE border=1 width=80% align="center">
            <tr>
                <td>Product Id</td>
                <td>Product Name</td>
                <td>Cost Price</td>
                <td>Selling Price</td>
                <td>Profit</td>
            </tr>
            <tr>
                <td>P00001</td>
                <td>Adidas Shoes</td>
                <td>Rs 5000/-</td>
                <td>Rs 5500/-</td>
                <td>Rs ${5500-5000}/-</td>
            </tr>
            <tr>
                <td>P00002</td>
                <td>Nike Shoes</td>
                <td>Rs 7000/-</td>
                <td>Rs 7500/-</td>
              	<td>Rs ${7500-7000}/-</td>
            </tr>
            <tr>
                <td>P00003</td>
                <td>Mobile Phones</td>
                <td>Rs 6999/-</td>
                <td>Rs 7599-</td>
               <td>Rs ${7599-6999}/-</td>
            </tr>
            <tr>
                <td>P00004</td>
                <td>Barbie Doll</td>
                <td>Rs 2399/-</td>
                <td>Rs 3599/-</td>
               <td>Rs ${3599-2399}/-</td>
            </tr>
            <tr>
            <td colspan="4" align="center">Total Profit</td>
            <td>Rs. ${500+500+600+1200}</td>
            </tr>
        </TABLE>
    </BODY>
</HTML>