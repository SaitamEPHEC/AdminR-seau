<?php require("SQLConnection.php");

$connection = connect();

if($_POST['name']) {
	// protection contre injection SQL via des string
	$testInjectionSQL = array(
		'npro' => ($_POST['npro']),
		'libelle' => ($_POST['libelle']),
		'prix' => ($_POST['prix']),
		'qstock' => ($_POST['qstock'])
	);
	unset($testInjectionSQL); // efface l'array
	// evite un autre type d'injection sql
	$npro =$connection->quote($_POST['npro']);
	$libelle =$connection->quote($_POST['libelle']);
	$prix =$connection->quote($_POST['prix']);
	$qstock =$connection->quote($_POST['qstock']);
	// création d'une requête pour éviter des injection sql
	$addProduit = $connection->prepare('INSERT INTO PRODUIT VALUES(:NPRO, :LIBELLE, :PRIX, :QSTOCK)') or die(print_r($connection->errorInfo()));
	// excecution de la requête
	$addProduit->execute(array(
		':NPRO' => $npro,
		':LIBELLE' => $libelle,
		':PRIX' => $prix,
		':QSTOCK' => $qstock)) or die(print_r($connection->errorInfo()));
	$addProduit->closeCursor(); //on ferme la requête
}
header("Location: /");
?>

