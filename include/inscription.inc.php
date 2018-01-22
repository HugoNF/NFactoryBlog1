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

    if($_POST["mail"] == "" || !filter_var($mail,FILTER_VALIDATE_EMAIL))
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
        // Requete permettant de me connecter a ma BDD
        $dsn = "mysql:dbname=nfactoryBlog;
        host=localhost;
        charset=utf8";
// Login de votre BDD
        $username = "root";
// MDP de votre BDD
        $password = "";
// Creation d'un
//$db = new PDO($dsn,$username,$password);
        try{
            $db = new PDO($dsn,$username,$password);
        }
        catch (PDOException $e){
            echo ($e -> getMessage());
        }
        if (!$db) {
            echo "Erreur de connexion";
        }
        else {
            $requeteLogin = ("SELECT * FROM `t_users` WHERE `USERMAIL` = '$mail'");
            if ($result = $db->query($requeteLogin)){
                if ($ligne= $result->rowCount() != 0){
                    echo "Votre e-mail est deja utilisé ";
                }else{
                    $mdp = sha1($_POST['password']);
                    $requete = "INSERT INTO t_users (ID_USER, USERNAME, USERFNAME,
                            USERMAIL, USERPASSWORD, USERDATEINS, T_ROLES_ID_ROLE)
                            VALUES (NULL, '$nom', '$prenom', '$mail', '$mdp', NULL, 5);";
                    $result2=$db->query($requete);
                    unset($db);
                }
            }else{
                d²ie($requeteLogin);
            }
        }
    }
}
else {
    include("./include/formInscription.php");
}

