<?php
    require_once 'php/db.php';
    require 'php/search.php';
    require_once 'php/form.php';
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>MTG Collection</title>
        <link rel='stylesheet' href='css/normalize.css'>
        <link rel='stylesheet' href='css/style.css'>
        <meta name='viewport' content='width=device-width, initial-scale=1.0'>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans&display=swap" rel="stylesheet">
    </head>
    <body>
        <header>
            <h1>Magic: The Gathering Collection</h1>
            <?php displayFilterForm(); ?>
                <button class="button" type="button" onclick="location.href='php/addcard.php'">Add Card</button>
            </form>
        </header>
    <main>
        <div class="card-container">
            <?php displayEngine(); ?>
        </div>
    </main>
    <footer>
        All rights belong to the respective artists and Wizards of the Coast. Data downloaded from Scryfall.com.
    </footer>
    </body>
</html>
