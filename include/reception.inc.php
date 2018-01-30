<?php
/*$id = $_SESSION['id'];
$db=connectionPDO();
if(isset($_SESSION['id']) AND !empty($_SESSION['id'])) {
    $msg = $db->prepare('SELECT * FROM messages WHERE id_destinataire = ?');
    $msg->execute(array($_SESSION['id']));
    $msg_nbr = $msg->rowCount();
    ?>
    <div>
    <a href="index.php?page=envoi\">Nouveau message</a><br /><br /><br/>
    <h3>Votre boîte de réception:</h3>
    <?php
    if($msg_nbr == 0) { echo "Vous n'avez aucun message..."; }
    while($m = $msg->fetch()) {
        $p_exp = $db->prepare('SELECT USERNAME FROM t_users WHERE id = ?');
        $p_exp->execute(array($m['id_expediteur']));
        $p_exp = $p_exp->fetch();
        $p_exp = $p_exp['id'];
        ?>
        <b><?= $p_exp ?></b> vous a envoyé: <br />
        <?= nl2br($m['message']) ?><br />
        -------------------------------------<br/>
        </div>
    <?php } ?>
<?php } ?>