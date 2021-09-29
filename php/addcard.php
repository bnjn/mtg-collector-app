<?php
    require_once 'db.php';
    require_once 'form.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Add Card</title>
    <link rel='stylesheet' href='../css/normalize.css'>
    <link rel='stylesheet' href='../css/style.css'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">
</head>
<body>
<header>
    <h1>Add Card</h1>
</header>
<main>
    <div class="add-card-form">
        <?php displayAddCardForm(); ?>
    </div>
</main>
<br>
<footer>
    All rights belong to the respective artists and Wizards of the Coast. Data downloaded from Scryfall.com.
</footer>
</body>
</html>