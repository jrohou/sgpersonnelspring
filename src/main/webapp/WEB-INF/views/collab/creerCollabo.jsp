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

		<form class="form-horizontal" role="form" name="form" action="creer"
			method="post">
			<div class="form-group">
				<label for="inputnom" class="col-sm-7 control-label">Nom</label>
				<div class="col-sm-10">
					<input type="text" name="nom" class="form-control" id="nom">
				</div>
			</div>
			<div class="form-group">
				<label for="inputprenom" class="col-sm-7 control-label">Prénom</label>
				<div class="col-sm-10">
					<input type="text" name="prenom" class="form-control" id="prenom">
				</div>
			</div>
			<div class="form-group">
				<label for="inputdatenaiss" class="col-sm-7 control-label">Date
					de naissance</label>
				<div class="col-sm-10">
					<input type="date" name="dateNaissance" class="form-control"
						id="dateNaissance">
				</div>
			</div>
			<div class="form-group">
				<label for="inputadresse" class="col-sm-7 control-label">Adresse</label>
				<div class="col-sm-10">
					<input type="text" name="adresse" class="form-control" id="adresse">
				</div>
			</div>
			<div class="form-group">
				<label for="inputcodepostal" class="col-sm-7 control-label">Code
					Postal</label>
				<div class="col-sm-10">
					<input type="text" name="codePostal" class="form-control"
						id="codePostal">
				</div>
			</div>
			<div class="form-group">
				<label for="inputville" class="col-sm-7 control-label">Ville</label>
				<div class="col-sm-10">
					<input type="text" name="ville" class="form-control" id="ville">
				</div>
			</div>
			<div class="form-group">
				<label for="inputnumsecu" class="col-sm-7 control-label">Numéro
					de Sécurité Sociale</label>
				<div class="col-sm-10">
					<input type="number" name="numeroSecuriteSociale" class="form-control"
						id="numeroSecuriteSociale">
				</div>
			</div>
			<div class="form-group">
				<label for="inputnumtel" class="col-sm-7 control-label">Numéro
					de téléphone</label>
				<div class="col-sm-10">
					<input type="number" name="numeroTelephone" class="form-control" id="numeroTelephone">
				</div>
			</div>
			<div class="form-group">
				<label for="inputcoordobancaire" class="col-sm-7 control-label">Coordonnées Bancaire</label>
				<div class="col-sm-10">
					<input type="text" name="coordonneesBancaire" class="form-control" id="coordonneesBancaire">
				</div>
			</div>
			<div class="form-group">
				<label for="inputdepartement" class="col-sm-7 control-label">Département</label>
				<div class="col-sm-10">
					<select class="form-control" name="departement">
						<option>Veuillez choisir un département</option>
						<c:forEach var="departement"
							items="${requestScope.ListeDepartement}">
							<option value="${departement.id }">${ departement.nom}</option>
						</c:forEach>
					</select>
				</div>
			</div>

			<div class="form-group">
				<label for="inputProfil" class="col-sm-7 control-label">Poste</label>
				<div class="col-sm-10">
					<select class="form-control" name="poste">
						<option>Veuillez choisir le poste</option>
						<c:forEach var="poste" items="${requestScope.ListePoste}">
							<option value="${poste.id }">${ poste.nom}</option>
						</c:forEach>
					</select>
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-20">
					<button type="submit" class="btn btn-primary"
						style="margin-left: 54.5%;">
						<i class="icon icon-check icon-lg"></i> Créer
					</button>
				</div>
			</div>
		</form>
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