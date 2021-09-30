<?php
require_once 'db.php';
$db = db();
$name = (string) $_POST['name'];
$url = (string) $_POST['imgurl'];
$mana_cost = convertManaCost((array) $_POST['manacost']);
$cmc = (int) $_POST['cmc'];
$type_line = (string) white_list($_POST['type'], ["Artifact", "Creature", "Enchantment", "Instant", "Land", "Planeswalker", "Sorcery"], "Invalid type!");
$colors = join((array) $_POST['cardcolor']);
$set_name = (string) $_POST['setname'];
$rarity = (string) white_list($_POST['rarity'], ["common", "uncommon", "rare", "mythic"], "Invalid rarity!");
$price = (float) $_POST['price'];
$artist = (string) $_POST['artistname'];

function convertManaCost($manaarray) : string {
    $colorless = array_shift($manaarray);
    $w = str_repeat("W", (int) $manaarray['W']);
    $u = str_repeat("U", (int) $manaarray['U']);
    $r = str_repeat("R", (int) $manaarray['R']);
    $b = str_repeat("B", (int) $manaarray['B']);
    $g = str_repeat("G", (int) $manaarray['G']);
    return "$colorless" . "$w" . "$u" . "$r" . "$b" . "$g";
}

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