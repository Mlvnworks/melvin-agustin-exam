<?php
// ========= This is included to sync_youtube_channel.php and youtube_channel_json.php ===========
class DBControl{
    private $connection;
    function __construct($connection){
        $this->connection = $connection;
    }

    function getVideos(){
        $videos = [];
        try{    
            $get_videos = $this->connection->query('
                SELECT * FROM youtube_channel_videos
            ');

            while($row = $get_videos->fetch_assoc()){
                $videos = [...$videos, $row]; 
            }
        }catch(Exception $err){
            echo $err ->getMessage();
            die();
        }

        return $videos;
    }
    function getChannelData(){
        $channel_data = null;
        try{
            $channel_data = $this->connection->query('
                SELECT * FROM youtube_channels
                LIMIT 1
            ')->fetch_assoc();
        }catch(Exception $err){
            print_r($err);
            die();
        }
        return $channel_data;
    }

    function setChannel($channelName, $channelDescription, $channelProfilePicture){
        // Sanitize datas
        $val_name = htmlspecialchars($channelName);
        $val_des = htmlspecialchars($channelDescription);
        $val_pic = htmlspecialchars($channelProfilePicture);

        try{
            $this->connection->query("
                INSERT INTO youtube_channels(profile_picture, name, description)
                VALUES('$val_pic','$val_name', '$val_des')
            ");
        }catch(Exception $err){
            print_r($err);
            die();
        }
    }

    // Add Fetched video to db
    function setVideos($videoTitle, $videoDescription, $videoId, $videoThumbnail, $videoLink){
        $val_title = htmlspecialchars($videoTitle);
        $val_des = htmlspecialchars($videoDescription);
        $val_id = htmlspecialchars($videoId);
        $val_thumb = htmlspecialchars($videoThumbnail);
        $val_link= htmlspecialchars($videoLink);

        try{
            $this->connection->query("
                INSERT INTO youtube_channel_videos(video_link, title, description, thumbnail)
                VALUES('$val_link', '$val_title', '$val_des', '$val_thumb')
            ");
        }catch(Exception $err){
            print_r($err);
            die();
        }
    }

    // Reset Db (to avoid duplicate) channels
    function resetTables(){
        try{
            // Reset channels table
            $this -> connection -> query('
                DELETE FROM youtube_channels
            ');

            // Reset videos table
            $this ->connection -> query('
                DELETE FROM youtube_channel_videos
            ');
        }catch(Exception $err){ 
            print_r($err);
            die();
        }
    }
}

class Video{
    public $videoTitle;
    public $videoDescription;
    public $videoId;
    public $videoThumbnail;
    public $videoLink;

    function __construct($videoTitle, $videoDescription, $videoId, $videoThumbnail, $videoLink){
        $this->videoTitle = $videoTitle;
        $this->videoDescription = $videoDescription;
        $this->videoId = $videoId;
        $this->videoThumbnail = $videoThumbnail;
        $this->videoLink = $videoLink;
    }
}

class Channel{
    public $channelName;
    public $channelDescription;
    public $channelProfilePicture;
    
    function __construct($channelName, $channelDescription, $channelProfilePicture){
        $this->channelName = $channelName;
        $this->channelDescription = $channelDescription;
        $this -> channelProfilePicture = $channelProfilePicture;
    }
}