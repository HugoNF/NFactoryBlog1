<?php
echo("<h1>Article</h1>");
if(isset($_SESSION['login'])) {
    if (isset($_POST['formulaire3'])) {
        $tabErreur = array();
        $titre = $_POST["titre"];
        $chapo = $_POST["chapo"];
        $contenu = $_POST["contenu"];

        $date = $_POST["date"];
        if ($titre == "") {
            array_push($tabErreur, "Veuillez saisir un titre");
        }
        if ($chapo == "") {
            array_push($tabErreur, "Veuillez saisir un chapo");
        }
        if ($contenu == "") {
            array_push($tabErreur, "Veuillez saisir du contenu");
        }
        if ($date == "") {
            array_push($tabErreur, "Veuillez saisir une date");
        }
        if (count($tabErreur) != 0) {
            $message = "<ul>";
            for ($i = 0; $i < count($tabErreur); $i++) {
                $message .= "<li>" . $tabErreur[$i] . "</li>";
            }
            $message .= "</ul>";
            echo($message);
            include("./include/formarticle.php");
        } else {
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
                $message = addslashes(htmlentities($message , ENT_HTML5 , 'UTF-8'));
                $chapo=addslashes(htmlentities($chapo));
                $titre=addslashes(htmlentities($titre));
                $requete = "INSERT INTO t_articles (ID_ARTICLE, ARTTITRE, ARTCHAPO,
                        ARTCONTENU, ARTDATE)
                        VALUES (NULL, '$titre', '$chapo', '$message', NOW());";
                if($result = $db->query($requete)) {
                    if ($ligne = $result->rowCount() > 0) {
                        $_SESSION['login'] = 1;
                    }
                    else
                        $_SESSION['login'] = 0;
                }
                unset($db);
            }
        }
    }else{
        include ("./include/FormArticle.php");
    }
}else {
    echo "vous n'avez pas accès a cette page ";
}