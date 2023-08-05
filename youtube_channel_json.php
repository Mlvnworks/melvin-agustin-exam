<?php
    // connection 
    require("./config.php");
    // includes
    require("./includes.php");
    
    $DB_control = new DBControl(connection);
    $channel = $DB_control->getChannelData();
    $videos = $DB_control->getVideos();

    echo json_encode([
        "channel" => $channel,
        "videos" => $videos
    ]);