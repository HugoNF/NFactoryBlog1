<h1>Inscription</h1>
<?php
if(isset($_POST["formulaire"])) {
    $tabErreur = array();

    $nom = $_POST['nom'];
    $prenom = $_POST['prenom'];
    $mail = $_POST['mail'];
    $mdp = $_POST['mdp'];

    if($_POST["nom"] == "")
        array_push($tabErreur, "Veuillez saisir votre nom");

    if($_POST["prenom"] == "")
        array_push($tabErreur, "Veuillez saisir votre prénom");

    if($_POST["mail"] == "")
        array_push($tabErreur, "Veuillez saisir votre e-mail");

    if($_POST["mdp"] == "")
        array_push($tabErreur, "Veuillez saisir un mot de passe");

    if(count($tabErreur) != 0) {
        $message = "<ul>";

        for($i = 0 ; $i < count($tabErreur) ; $i++) {
            $message .= "<li>" . $tabErreur[$i] . "</li>";
        }

        $message .= "</ul>";
        echo($message);

        include("./include/formInscription.php");
    }

    else {
        $connexion = mysqli_connect("localhost", "root", "", "blog");
        $requete = "INSERT INTO t_users (`ID_USER`, `USERNOM`, `USERPRENOM`, `USERMAIL`, `USERPASSWORD`) VALUES (NULL, $nom, $prenom, $mail, $mdp);";
        var_dump($requete);
    }
}

else {
    echo("Je viens d'ailleurs");
    include("./include/formInscription.php");
}
