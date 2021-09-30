<?php
    require_once 'db.php';
    function searchCards() : void {
        $db = db();
        $cmc = (int)$_POST['cmc'];
        $showall = (int)$_POST['showall'];
        $orderby = white_list($_POST['sort'], ["prices.usd", "id", "cmc", "type_line"], "Invalid field name");
        $direction = white_list($_POST['ascend'], ["ASC", "DESC"], "Invalid ORDER BY direction");
        $query = "SELECT `name`, `image_uris.art_crop`, `mana_cost`, `cmc`, `type_line`, `colors`, `set_name`, `rarity`, `prices.usd`, `artist`
            FROM `mtgcards`
            WHERE `cmc` = :cmc
            ORDER BY `$orderby` $direction
            ;";
        if ($showall === 1) {
            $query = "SELECT `name`, `image_uris.art_crop`, `mana_cost`, `cmc`, `type_line`, `colors`, `set_name`, `rarity`, `prices.usd`, `artist`
              FROM `mtgcards`
              ORDER BY `$orderby` $direction
              ;";
        }
        $query = $db->prepare($query);
        $query->bindParam(':cmc', $cmc, PDO::PARAM_INT);
        $query->execute(['cmc' => $cmc]);
        $cards = $query->fetchAll();
        foreach ($cards as $card) {
            echo '<div class="card-item">';
            echo '<div class="card-header"><h3>' . $card['name'] . "</h3>\n";
            echo '<img src="' . $card['image_uris.art_crop'] . '" alt="card art"></div>' . "\n";
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

    function displayDefault() : void {
        $db = db();
        $query = $db->prepare("
            SELECT `name`, `image_uris.art_crop`, `mana_cost`, `cmc`, `type_line`, `colors`, `set_name`, `rarity`, `prices.usd`, `artist`
            FROM `mtgcards`
            ORDER BY `prices.usd` DESC
            ;");
        $query->execute();
        $result = $query->fetchAll();
        foreach($result as $card) {
            echo '<div class="card-item">';
            echo '<div class="card-header"><h3>' . $card['name'] . "</h3>\n";
            echo '<img src="' . $card['image_uris.art_crop'] . '" alt="card art"></div>' . "\n";
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
    function displayEngine() {
        if (!empty($_POST)) {
            searchCards();
            }
        else {
            displayDefault();
            }
        }