<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="fr">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Mon Collaborateur</title>
        <link rel="stylesheet" type="text/css "href="../css/style.css">
    <!-- Material Design for Bootstrap fonts and icons -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">

    <!-- Material Design for Bootstrap CSS -->
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.0.0-beta.3/dist/css/bootstrap-material-design.min.css" integrity="sha384-k5bjxeyx3S5yJJNRD1eKUMdgxuvfisWKku5dwHQq9Q/Lz6H8CyL89KF52ICpX4cL" crossorigin="anonymous">
  </head>
  <body>
    <br>
    <h1> Mon Collaborateur </h1>
    <br>
    <h3>Collaborate different</h3>
    <br>
    <div class="container">
      <div class="card-group">

        <div class="card" style="width: 20rem;">
          <img class="card-img-top" src="login.png" alt="Card image">
          <div class="card-body">
            <h4 class="card-title">Connectez-vous</h4>
            <p class="card-text">Accédez à votre panel d'administration afin de gérer vos Collaborateurs.</p>
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#login">Connexion</button>
          </div>
        </div>

      </div>

      <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="login" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="login">Connectez-vous</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              </button>
            </div>
            <div class="modal-body">


              <form>
                  <div class="form-group">
                    <label for="identifiant">Identifiant</label>
                    <input type="text" class="form-control" id="identifiant" aria-describedby="Idendifiant" placeholder="Saisir votre Idendifiant" required>
                    <small id="identifiant" class="form-text text-muted">Veuillez saisir votre Idendifiant.</small>
                  </div>
                  <div class="form-group">
                    <label for="password">Mot de passe</label>
                    <input type="password" class="form-control" id="password" aria-describedby="Password" placeholder="Saisir votre Mot de passe" required>
                    <small id="password" class="form-text text-muted">Veuillez saisir votre mot de passe.</small>
                  </div>
                  <div class="form-check">
                    <label class="form-check-label">
                      <input type="checkbox" class="form-check-input">
                      Se souvenir de moi
                    </label>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dimiss="modal">Fermer</button>
                  <button class="btn btn-primary" type="submit">Se connecter</button>
                </form>
              </div>

              </div>
            </div>
          </div>
        </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/popper.js@1.12.5/dist/umd/popper.js" integrity="sha384-KlVcf2tswD0JOTQnzU4uwqXcbAy57PvV48YUiLjqpk/MJ2wExQhg9tuozn5A1iVw" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/bootstrap-material-design@4.0.0-beta.3/dist/js/bootstrap-material-design.js" integrity="sha384-hC7RwS0Uz+TOt6rNG8GX0xYCJ2EydZt1HeElNwQqW+3udRol4XwyBfISrNDgQcGA" crossorigin="anonymous"></script>
    <script>$(document).ready(function() { $('body').bootstrapMaterialDesign(); });</script>
  </body>
</html>