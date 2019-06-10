<?php /*require("injectToWeb.php");*/ ?>
<!DOCTYPE html>
<html>
	<head>
		<title> B2B </title>
		<meta charset="UTF-8">
	</head>
	<body>
		<h2> Site B2B </h2>
		<h3>Présentation</h3>
			<p>Nous vendons tous types de jouets. N'hésitez pas à consulter la liste de nos jouets!</p>
		<h3>Ajoutez un Jouet</h3>
		<form method="post" action="injectToSQL.php">
			<p>
		  			Numéro de Produit :<br>
		  			<input type="text" name="npro" value="" required><br><br>

					Nom(Libellé) :<br>
		  			<input type="text" name="libelle" value="" required><br><br>

					Prix :<br>
		  			<input type="text" name="prix" value="" required><br><br>

		  			Quantité en stock : <br>
		  			<input type="text" name="qstock" value="" required><br><br>

					<input type="submit" value="Valider">
			</p>
	        </form>
		<h3> Liste de nos Jouets </h3>
		<?= getProduits(); ?>
	</body>
</html>
