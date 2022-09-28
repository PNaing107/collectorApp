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

if ($validSubmission) {
    $db = connectToDB('epic-rides');
    print_r(addCollectionItem($db));
} else {
    echo 'Please go back to the Home page and try again.';
}
//$_POST['name']
//$_POST['country']
//$_POST['region']

//$_POST['discipline']

//$_POST['url']
//$_POST['alt_text']

//$_POST['distance']

//$_POST['effort_level']
//$_POST['adrenaline_rating']

//$_POST['short_description']

