<?php
$share = '<a href="http://twitter.com/share" class="twitter-share-button" 
  data-count="vertical" data-via="InfoWebMaster">Tweet</a>
<script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script>';

$share2 = '<a name="fb_share" type="box_count" share_url="http://www.example.com/page.html"></a>
<script src="http://static.ak.fbcdn.net/connect.php/js/FB.Share" type="text/javascript"></script>';
$db = connectionPDO();
$msgParPage = 5 ;
$retourTotale = $db->query("SELECT COUNT(*) AS total FROM T_ARTICLES");
$donneesTotale = $retourTotale->fetch(PDO::FETCH_ASSOC);
$totale = $donneesTotale['total'];
$nombreDePage = ceil($totale/$msgParPage);
if (isset($_GET['page'])){
    $pageActuelle = intval($_GET['page']);
    if ($pageActuelle > $nombreDePage){
        $pageActuelle = $nombreDePage;
    }
}else{
    $pageActuelle = 1;
}


$sql ="SELECT * FROM t_articles LEFT JOIN t_categories_has_t_articles
 ON t_articles.ID_ARTICLE=t_categories_has_t_articles.T_ARTICLES_ID_ARTICLE LEFT JOIN t_categories ON t_categories_has_t_articles.T_CATEGORIES_ID_CATEGORIE=t_categories.ID_CATEGORIE";
$reponse = $db ->query($sql);
$premiereEntree=($pageActuelle-1)*$msgParPage; // On calcul la première entrée à lire

// La requête sql pour récupérer les messages de la page actuelle.
$reponsee=$db->query('SELECT * FROM t_articles ORDER BY ID_ARTICLE DESC LIMIT '.$premiereEntree.', '.$msgParPage.'');



while ($donnees= $reponse->fetch(PDO::FETCH_ASSOC)){

    echo (html_entity_decode( "<div>"."<br/>" . "<h2>".$donnees['ARTTITRE'] . "</h2>". "<br/>"
        . "<h3>".  $donnees['ARTCHAPO'] ."</h3>". "<br/>"
        . "<div>". $donnees['ARTCONTENU'] ."</div>" . "<br/>"
        . "</div>" . $donnees['CATLIBELLE'].$share.$share2."<a href='./rss.php'><img width='5%' src='./assets/img/rss.png'></a>"."<hr/>"));

}
echo '<p align="center">Page : ';
for($i=1; $i<=$nombreDePage; $i++)
{
    //On va faire notre condition
    if($i==$pageActuelle)
    {
        echo ' [ '.$i.' ] ';
    }
    else
    {
        echo ' <a href="index.php?page=accueil&amp;debut='.$i.'">'.$i.'</a> ';
    }
}
echo '</p>';

