<?php
    function db() {
        try {
            $db = new PDO('mysql:host=db; dbname=Mtgdb', 'root', 'password');
            $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
            return $db;
        } catch (PDOException $e) {
            echo '<p>Error connecting to database! ' . $e->getMessage() . '</p>';
            die();
        }
    }

    function white_list(&$value, $allowed, $message) {
        if ($value === null) {
            return $allowed[0];
        }
        $key = array_search($value, $allowed, true);
        if ($key === false) {
            throw new InvalidArgumentException($message);
        } else {
            return $value;
        }
    }