<?php
require_once 'db.php';
$db = db();
$name = (string) $_POST['name'];
$url = (string) $_POST['imgurl'];
$mana_cost = (array) $_POST['manacost'];
$cmc = (int) $_POST['cmc'];
$type_line = (string) white_list($_POST['type'], ["Artifact", "Creature", "Enchantment", "Instant", "Land", "Planeswalker", "Sorcery"], "Invalid type!");
$colors = (array) $_POST['cardcolor'];
$set_name = (string) $_POST['setname'];
$rarity = (string) white_list($_POST['rarity'], ["common", "uncommon", "rare", "mythic"], "Invalid rarity!");
$price = (float) $_POST['price'];
$artist = (string) $_POST['artistname'];
//var_dump($name);
//var_dump($url);
//var_dump($mana_cost);
//var_dump($cmc);
//var_dump($type_line);
//var_dump($colors);
//var_dump($set_name);
//var_dump($rarity);
//var_dump($price);
//var_dump($artist);
$query = 'INSERT INTO 
          mtgcards(`name`, `image_uris.art_crop`, `mana_cost`, `cmc`, `type_line`, `colors`, `set_name`, `rarity`, `prices.usd`, `artist`)
          VALUES(:name, :url, :mana_cost, :cmc, :type_line, :colors, :set_name, :rarity, :price, :artist)';
$query = $db->prepare($query);
$query->execute([
    'name' => $name,
    'url' => $url,
    'mana_cost' => $mana_cost,
    'cmc' => $cmc,
    'type_line' => $type_line,
    'colors' => $colors,
    'set_name' => $set_name,
    'rarity' => $rarity,
    'price' => $price,
    'artist' => $artist]);
echo 'Card Added!';
//sleep(3);
//header('../index.php');