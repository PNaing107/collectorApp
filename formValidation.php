<?php

require_once 'functions.php';
$validSubmission = true;

// 1. Check Name of Route, URL, Alt Text & Short Description are strings, not empty and not larger than 255 characters
$string_inputs = [
    'name' => 'route name',
    'url' => 'image url',
    'alt_text' => 'image description',
    'short_description' => 'route description'
    ];

$result = checkStringInput($string_inputs);
if(!$result[0]) {
    echo '<p>Invalid ' . $result[1] .'. Make sure you provide a ' . $result[1] .' and it is no longer than 255 characters.</p>';
    $validSubmission = false;
}

// 2. Check if valid url
$result = validateURL($_POST['url']);
if(!$result) {
    echo '<p>URL is invalid. Please check and try again</p>';
    $validSubmission = false;
}

// 3. Execute addCollectionItem() if submitted data is valid
if ($validSubmission) {
    $db = connectToDB('epic-rides');
    echo addCollectionItem($db);
} else {
    echo '<p>Please go back to the <a href="form.php">form</a> and try again.</p>';
}


