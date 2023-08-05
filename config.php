<?php
    define("host", "localhost");
    define("password", "");
    define("username", "root");
    define("db_name", "youtube_db");
    define("port", 3306);

    define("connection", new mysqli(host, username, password, db_name, port));
?>