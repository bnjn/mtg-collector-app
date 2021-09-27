<?php
    include 'php/db.php';

// print_r(testQuery(1010));
// var_dump(returnTop50());
?>
<html>
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
    </header>
    <main>
        <div class="card-container">
            <?php displayCards(); ?>
        </div>
    </main>
    <footer>

    </footer>
    </body>
</html>
