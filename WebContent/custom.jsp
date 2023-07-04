<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.ArrayList" %>
<%@ page import="shop.vo.CustomVO" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>custom-made</title>
<link rel="stylesheet" href="css/custom.css">
</head>
<body>
	<%@ include file="mainHeader.jsp" %>
	<div id="container">
		<h1>| Custom-made |</h1>
		<hr>
		<h1>Type</h1>
<%
	ArrayList<CustomVO> list = (ArrayList<CustomVO>)request.getAttribute("list");
	if(!list.isEmpty()) {%>
	<section id="wrapper">
		<% ArrayList<CustomVO> prod = new ArrayList<>();
			for(int i=0; i<16; i++) {
				if(list.get(i).getName().contains("type")){
					//prod = list.get(i);
					prod.add(list.get(i));
				}
			}
				for(int i=0;i<2;i++){
			 %>					
			<article>		
				<img src="<%= prod.get(i).getImg() %>">
				<h2><%= prod.get(i).getName() %></h2>
				<p><%= prod.get(i).getDetail() %></p>
			</article>	
		<%} %>
		</section>
		<h1>Flower</h1>
		<section id="wrapper">
		<% 
			ArrayList<CustomVO> prod2 = new ArrayList<>();
			for(int i=0; i<16; i++) {			
			if(!list.get(i).getName().contains("type") && !list.get(i).getName().contains("plus")){
				//prod2 = list.get(i);
				prod2.add(list.get(i));
				}
			}
			for(int i=0; i<prod2.size(); i++) {
			 %>	
			<article>		
				<img src="<%= prod2.get(i).getImg() %>">
				<h2><%= prod2.get(i).getName() %></h2>
				<p><%= prod2.get(i).getDetail() %></p>
			</article>		
		<%} %>	
		</section>
		<h1>plus</h1>
		<section id="wrapper">
		<% 
			ArrayList<CustomVO> prod3 = new ArrayList<>();
			for(int i=0; i<16; i++) {
			if(list.get(i).getName().contains("plus")){
				prod3.add(list.get(i));
			}
			} for(int i=0; i<3; i++) {%>	
			<article>		
				<img src="<%= prod3.get(i).getImg() %>">
				<h2><%= prod3.get(i).getName() %></h2>
				<p><%= prod3.get(i).getDetail() %></p>
			</article>
		<%} %>
		</section>
	<%}else {
		out.print("<h2>none</h2>");
	}
	%>	
	</div>
	<form action="customOrder.jsp" method="post">
		<input type="submit" name="send" value="주문하기">
	</form>
	<%@ include file="footer.jsp" %>
</body>
</html>