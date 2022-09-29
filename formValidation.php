<?php

require_once 'functions.php';
$validSubmission = true;

function checkStringInput(array $stringFields): bool
{
    foreach ($stringFields as $key => $value) {
        if (!is_string($_POST[$key]) | strlen($_POST[$key]) == 0 | strlen($_POST[$key]) > 255) {
            echo '<p>Invalid ' . $value .'. Make sure you provide a ' . $value .' and it is no longer than 255 characters.</p>';
            return false;
        }
    }
    return true;

}

function validateURL(string $url): bool
{
    if (!filter_var($url, FILTER_VALIDATE_URL)) {
        echo '<p>URL is invalid. Please check and try again</p>';
        return false;
    }
    return true;
}

// 1. Check Name of Route, URL, Alt Text & Short Description are strings, not empty and not larger than 255 characters
$string_inputs = [
    'name' => 'route name',
    'url' => 'image url',
    'alt_text' => 'image description',
    'short_description' => 'route description'
    ];

$validSubmission = checkStringInput($string_inputs);

// 2. Check if valid url
$validSubmission = validateURL($_POST['url']);

// 3. Execute addCollectionItem() if submitted data is valid
if ($validSubmission) {
    $db = connectToDB('epic-rides');
    echo addCollectionItem($db);
} else {
    echo '<p>Please go back to the <a href="form.php">form</a> and try again.</p>';
}


