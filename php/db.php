<?php
    function testQuery(int $id) : array {
        $db = new PDO('mysql:host=db; dbname=Mtgdb', 'root', 'password');
        $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
        $query = $db->prepare("SELECT `id`, `name` FROM `mtgcards` WHERE `id` = :id;");
        $query->execute(array('id'=>$id));
        $result = $query->fetchAll();
        return $result;
    }

    function returnTop50() : array {
        $db = new PDO('mysql:host=db; dbname=Mtgdb', 'root', 'password');
        $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
        $query = $db->prepare("SELECT `id`, `name` FROM `mtgcards` LIMIT 50");
        $query->execute();
        $result = $query->fetchAll();
        return $result;
}