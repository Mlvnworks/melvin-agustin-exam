<?php
//Config
require("./config.php");
// Classes
require("./includes.php");

$apiKey = 'AIzaSyCgAng_C9T9OnhvB8n8a97u3rNIei0dts0'; // API key
$channelId = 'UCWJ2lWNubArHWmf3FIHbfcQ'; // Channel ID
$maxResultsPerRequest = 50;
$maxTotalResults = 100;

$DB_control = new DBControl(connection);
$DB_control->resetTables();
$videos = [];
$channel;

// Function to fetch videos for a given page token
function getVideosByPage($apiKey, $channelId, $pageToken = null) {
    global $maxResultsPerRequest;

    $videosUrl = "https://www.googleapis.com/youtube/v3/search?part=snippet&channelId=$channelId&maxResults=$maxResultsPerRequest&order=date&key=$apiKey";

    if ($pageToken) {
        $videosUrl .= "&pageToken=$pageToken";
    }

    $videosCh = curl_init();
    curl_setopt($videosCh, CURLOPT_URL, $videosUrl);
    curl_setopt($videosCh, CURLOPT_RETURNTRANSFER, true);
    $videosResponse = curl_exec($videosCh);
    curl_close($videosCh);

    return json_decode($videosResponse, true);
}

// API endpoint for retrieving channel details
$channelUrl = "https://www.googleapis.com/youtube/v3/channels?part=snippet&id=$channelId&key=$apiKey";

// Initialize cURL session for getting channel details
$channelCh = curl_init();
curl_setopt($channelCh, CURLOPT_URL, $channelUrl);
curl_setopt($channelCh, CURLOPT_RETURNTRANSFER, true);
$channelResponse = curl_exec($channelCh);
curl_close($channelCh);

// Parse the JSON response for channel details
$channelData = json_decode($channelResponse, true);

// Get channel details
$channelName = $channelData['items'][0]['snippet']['title'];
$channelDescription = $channelData['items'][0]['snippet']['description'];
$channelProfilePicture = $channelData['items'][0]['snippet']['thumbnails']['default']['url'];

$channel = new Channel($channelName, $channelDescription, $channelProfilePicture);

$totalResults = 0;
$nextPageToken = null;

// Fetch videos until we have 100 or no more videos available
while ($totalResults < $maxTotalResults) {
    $videosData = getVideosByPage($apiKey, $channelId, $nextPageToken);

    if (isset($videosData['items'])) {
        foreach ($videosData['items'] as $video) {
            $videoTitle = $video['snippet']['title'];
            $videoDescription = $video['snippet']['description'];
            $videoId = $video['id']['videoId'];
            $videoThumbnail = $video['snippet']['thumbnails']['default']['url'];
            $videoLink = "https://www.youtube.com/watch?v=$videoId";

            // Add to video list
            $videos[] = new Video($videoTitle, $videoDescription, $videoId, $videoThumbnail, $videoLink);

            $totalResults++;
            if ($totalResults >= $maxTotalResults) {
                break;
            }
        }
    }

    // Check if there are more videos available
    $nextPageToken = $videosData['nextPageToken'] ?? null;
    if (!$nextPageToken) {
        break;
    }
}

// Set Channel Data on Db
$DB_control->setChannel($channelName, $channelDescription, $channelProfilePicture);

// Add videos to DB
foreach ($videos as $video) {
    $v_title = $video->videoTitle;
    $v_des = $video->videoDescription;
    $v_id = $video->videoId;
    $v_thumb = $video->videoThumbnail;
    $v_link = $video->videoLink;

    $DB_control->setVideos($v_title, $v_des, $v_id, $v_thumb, $v_link);
}

echo "Synced Successfully!";
// Close the connection
connection->close();
