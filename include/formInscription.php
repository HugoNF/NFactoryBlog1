<?php
if(isset($_POST['captcha'])) {
if($_POST['captcha'] == $_SESSION['captcha']) {
echo "Captcha valide !";
} else {
echo "Captcha invalide...";
}
}?>
<form action='#' method="POST">
        <br>
        <div>
             <label for="nom">Nom :</label>
             <input type="text" name="nom" id="nom" placeholder="Tapez votre nom">
        </div>
        <br>
        <div>
             <label for="Prenom">Prenom :</label>
             <input type="text" name="prenom" id="prenom" placeholder="Tapez votre prenom">
        </div>
        <br>
        <div>
             <label for="mail">Mail :</label>
             <input type="text" name="mail" id="mail" placeholder="Tapez votre adresse mail">
        </div>
        <br>
        <div>
             <label for="password">Mot de passe :</label>
             <input type="password" name="password" id="password" placeholder="Tapez votre Mot de passe">
        </div>
        <br>
        <div>
            <img src="./include/captcha.php" />
                <input type="text" name="captcha" />
            <input type="submit" />
        </div>
        <br>
        <div>
            <input type="submit" value="Envoyer !" name="formulaire">
        </div>
    </form>