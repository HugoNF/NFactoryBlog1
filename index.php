<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="./assets/css/screen.css" type="text/css" rel="stylesheet" />
    <title>Blog</title>
</head>
<body>
<div id="container">
<?php include_once("./include/header.php");?>
<main>
<?php
if (isset($_GET['page']) && $_GET['page'] != "") {
    $page = $_GET['page'];    
}

else {
    $page = "default";
}

$page = "./include/" . $page . ".inc.php"; 

$incFiles = glob("./include/*.inc.php");

if (in_array($page, $incFiles)) {
    include($page);
}

else {
    include("./include/default.inc.php");
}
?>
</main>
<?php include_once("./include/footer.php");?>
</div>
</body>
</html>