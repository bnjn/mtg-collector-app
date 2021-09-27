<?php
//    function testQuery(int $id) : array {
//        $db = new PDO('mysql:host=db; dbname=Mtgdb', 'root', 'password');
//        $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
//        $query = $db->prepare("SELECT `id`, `name` FROM `mtgcards` WHERE `id` = :id;");
//        $query->execute(array('id'=>$id));
//        $result = $query->fetchAll();
//        return $result;
//    }
//
//    function returnTop50() : array {
//        $db = new PDO('mysql:host=db; dbname=Mtgdb', 'root', 'password');
//        $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
//        $query = $db->prepare("SELECT `id`, `name` FROM `mtgcards` LIMIT 50");
//        $query->execute();
//        $result = $query->fetchAll();
//        return $result;
//}
//
//    function grabCards() : array {
//        $db = new PDO('mysql:host=db; dbname=Mtgdb', 'root', 'password');
//        $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
//        $query = $db->prepare("
//            SELECT `name`, `image_uris.art_crop`, `mana_cost`, `cmc`, `type_line`, `colors`, `set_name`, `rarity`, `prices.usd`, `artist`
//            FROM `mtgcards`
//            LIMIT 1;"
//        );
//        $query->execute();
//        $result = $query->fetchAll();
//        return $result;
//    }

    function displayCards() : void {
        $db = new PDO('mysql:host=db; dbname=Mtgdb', 'root', 'password');
        $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
        $query = $db->prepare("
            SELECT `name`, `image_uris.art_crop`, `mana_cost`, `cmc`, `type_line`, `colors`, `set_name`, `rarity`, `prices.usd`, `artist`
            FROM `mtgcards` 
            LIMIT 10;"
        );
        $query->execute();
        $result = $query->fetchAll();
        foreach($result as $card) {
                echo '<h2>' . $card['name'] . "</h2>\n";
                echo '<img src="' . $card['image_uris.art_crop'] . '">' . "\n";
                echo '<p>Mana cost: ' . $card['mana_cost'] . "</p>\n";
                echo '<p>Converted mana cost: ' . $card['cmc'] . "</p>\n";
                echo '<p>Type: ' . $card['type_line'] . "</p>\n";
                echo '<p>Colours: ' . $card['colors'] . "</p>\n";
                echo '<p>Set: ' . $card['set_name'] . "</p>\n";
                echo '<p>Rarity: ' . $card['rarity'] . "</p>\n";
                echo '<p>Price: $' . $card['prices.usd'] . "</p>\n";
                echo '<p>Artist: ' . $card['artist'] . "</p>\n";
            }
    }