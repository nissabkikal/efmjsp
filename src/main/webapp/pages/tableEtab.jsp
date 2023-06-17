<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>table etablissment</title>

<link rel='stylesheet' href='../css/bootstrap.min.css'>

<link rel="stylesheet" href="../css/all.min.css">
</head>
<body>

	<div class="d-flex justify-content-end m-3">
		<a href="/do/goAdd" class="btn btn-success"><i
			class="fa-solid fa-plus"></i> Nouvelle Etablissment</a>
	</div>
	<table class="table  caption-top" style="width:80%;margin:auto;">
		<caption>
			<b><h3>Liste Des Etablissments</h3></b>
		</caption>
		<thead class="table-dark">
			<tr>
				<th scope="col">Code Etablissment</th>
				<th scope="col">Nom</th>
				<th scope="col">Adresse</th>
				<th scope="col">Telephone</th>
				<th scope="col">Operation</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="etab" items="${etablissement}">
				<tr>
					<th scope="row">${etab.getCode_etab() }</th>
					<td>${etab.getNom_Etab() }</td>
					<td>${etab.getAdresse_etab() }</td>
					<td>${etab.getTel_etab() }</td>
					<td><a href="/do/delete?id=${etab.getCode_etab() }"
						class="btn btn-danger"><i class="fa-solid fa-trash"></i></a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<script src='../js/bootstrap.min.js'></script>
	<script src='../js/all.min.js'></script>
</body>
</html>