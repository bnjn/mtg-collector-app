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
            FROM `mtgcards`;"
        );
        $query->execute();
        $result = $query->fetchAll();
        foreach($result as $card) {
                echo '<div class="card-item">';
                echo '<div class="card-header"><h3>' . $card['name'] . "</h3>\n";
                echo '<img src="' . $card['image_uris.art_crop'] . '"></div>' . "\n";
                echo '<div class="card-stats">';
                echo '<p><strong>Mana cost</strong>: ' . $card['mana_cost'] . "</p>\n";
                echo '<p><strong>Converted mana cost</strong>: ' . $card['cmc'] . "</p>\n";
                echo '<p><strong>Type</strong>: ' . $card['type_line'] . "</p>\n";
                echo '<p><strong>Colours</strong>: ' . $card['colors'] . "</p>\n";
                echo '<p><strong>Set</strong>: ' . $card['set_name'] . "</p>\n";
                echo '<p><strong>Rarity</strong>: ' . $card['rarity'] . "</p>\n";
                echo '<p><strong>Price</strong>: $' . $card['prices.usd'] . "</p>\n";
                echo '<p><strong>Artist</strong>: ' . $card['artist'] . "</p>\n";
                echo '</div>';
                echo '</div>';
            }
    }