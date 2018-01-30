<?php
/*$id = $_SESSION['id'];
$db=connectionPDO();

if(isset($_SESSION['id'])) {

    if(isset($_POST['envoi_message'])) {
        if(isset($_POST['destinataire'],$_POST['message']) AND !empty($_POST['destinataire']) AND !empty($_POST['message'])) {
            $destinataire = htmlspecialchars($_POST['destinataire']);
            $message = htmlspecialchars($_POST['message']);
            $id_destinataire = $db->prepare('SELECT ID_USER FROM t_users WHERE USERNAME = ?');
            $id_destinataire->execute(array($destinataire));
            $dest_exist = $id_destinataire->rowCount();
            if($dest_exist == 1) {
                $id_destinataire = $id_destinataire->fetch();
                $id_destinataire = $id_destinataire['id'];
                $ins = $db->prepare('INSERT INTO messages(id_expediteur,id_destinataire,message) VALUES (?,?,?)');
                $ins->execute(array($_SESSION['id'],$id_destinataire,$message));
                $error = "Votre message a bien été envoyé !";
            } else {
                $error = "Cet utilisateur n'existe pas...";
            }
        } else {
            $error = "Veuillez compléter tous les champs";
        }
    }
    $destinataires = $db->query('SELECT USERNAME FROM t_users ORDER BY USERNAME');
    ?>
    <form method="post">
        <label>Destinataire:</label>
            <select name="destinataire">
            <?php while($d = $destinataires->fetch()) { ?>
            <option><?= $d['id'] ?></option>
            <?php } ?>
         </select> -->
        <input type="text" name="destinataire" />
        <br /><br />
        <textarea placeholder="Votre message" name="message"></textarea>
        <br /><br />
        <input type="submit" value="Envoyer" name="envoi_message" />
        <br /><br />
        <?php if(isset($error)) { echo '<span style="color:lawngreen">'.$error.'</span>'; } ?>
    </form>
    <br />
    <a href="index.php?page=reception\">Boîte de réception</a>
    <?php
}
?>