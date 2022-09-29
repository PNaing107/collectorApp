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
foreach ($string_inputs as $key => $value) {
    if (!is_string($_POST[$key]) | strlen($_POST[$key]) == 0 | strlen($_POST[$key]) > 255) {
        echo '<p>Invalid ' . $value .'. Make sure you provide a ' . $value .' and it is no longer than 255 characters.</p>';
        $validSubmission = false;
    }
}

// 2. Check if valid url
if (!filter_var($_POST['url'], FILTER_VALIDATE_URL)) {
    echo '<p>URL is invalid. Please check and try again</p>';
}

if ($validSubmission) {
    $db = connectToDB('epic-rides');
    echo addCollectionItem($db);
} else {
    echo '<p>Please go back to the <a href="form.php">form</a> and try again.</p>';
}


