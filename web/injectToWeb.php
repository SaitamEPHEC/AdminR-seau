<?php require("SQLConnection.php");

function getProduits() {

	$connection = connect();

	$req = $connection->prepare('SELECT * FROM CLIENT');
	$req->execute();

	$content = '<table><tr>';
	$content .= '<th>'."Npro".'</th>';
	$content .= '<th>'."Libelle".'</th>';
	$content .= '<th>'."Prix".'</th>';
	$content .= '<th>'."Qstock".'</th></tr>';
	$donnees = $req->fetchAll();
	foreach($donnees as $data)
	{
	    $content .= '<tr><th>'.$data['NPRO'].'</th>';
	    $content .= '<th>'.$data['LIBELLE'].'</th>';
	    $content .= '<th>'.$data['PRIX'].'</th>';
	    $content .= '<th>'.$data['QSTOCK'].'</th></tr>';
	}
	$content .= '</table>';
	$req->closeCursor();
	return $content;
}
?>
