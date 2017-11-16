<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Mon Collaborateur</title>
<link rel="stylesheet" type="text/css " href="../../../css/style.css">
<!-- Material Design for Bootstrap fonts and icons -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">

<!-- Material Design for Bootstrap CSS -->
<link rel="stylesheet"
	href="https://unpkg.com/bootstrap-material-design@4.0.0-beta.3/dist/css/bootstrap-material-design.min.css"
	integrity="sha384-k5bjxeyx3S5yJJNRD1eKUMdgxuvfisWKku5dwHQq9Q/Lz6H8CyL89KF52ICpX4cL"
	crossorigin="anonymous">
</head>
<body>
	<br>
	<h1>Mon Collaborateur</h1>
	<br>
	<h3>Collaborate different</h3>
	<br>
	<div class="container">

		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<th>Nom</th>
					<th>Prénom</th>
					<th>Date de naissance</th>
					<th>Adresse</th>
					<th>Code Postal</th>
					<th>Ville</th>
					<th>Numéro de Sécurité Sociale</th>
					<th>Numéro de téléphone</th>
					<th>Coordonnées Bancaires</th>
					<th>Département</th>
					<th>Poste</th>
				</tr>
			</thead>
			<c:forEach var="collab" items="${requestScope.ListerCollab}">
				<tbody>
					<tr>
						<c:if test="${!empty collab}">
							<td><c:out value="${collab.nom }" /></td>
							<td><c:out value="${collab.prenom }" /></td>
							<td><c:out value="${collab.adresse }" /></td>
							<td><c:out value="${colab.codePostal }" /></td>
							<td><c:out value="${collab.ville }" /></td>
							<td><c:out value="${collab.numeroSecuriteSociale }" /></td>
							<td><c:out value="${collab.numeroTelephone }" /></td>
							<td><c:out value="${collab.departement.nom }" /></td>
							<td><c:out value="${collab.poste.nom }" /></td>
						</c:if>
					</tr>
				</tbody>
			</c:forEach>
		</table>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script src="https://unpkg.com/popper.js@1.12.5/dist/umd/popper.js"
		integrity="sha384-KlVcf2tswD0JOTQnzU4uwqXcbAy57PvV48YUiLjqpk/MJ2wExQhg9tuozn5A1iVw"
		crossorigin="anonymous"></script>
	<script
		src="https://unpkg.com/bootstrap-material-design@4.0.0-beta.3/dist/js/bootstrap-material-design.js"
		integrity="sha384-hC7RwS0Uz+TOt6rNG8GX0xYCJ2EydZt1HeElNwQqW+3udRol4XwyBfISrNDgQcGA"
		crossorigin="anonymous"></script>
	<script>
		$(document).ready(function() {
			$('body').bootstrapMaterialDesign();
		});
	</script>
</body>
</html>