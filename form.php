<?php
require_once 'functions.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1"> <!-- The responsive meta tag -->
    <title>Epic Rides</title>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="https://kit.fontawesome.com/59624a24a9.js" crossorigin="anonymous"></script>
</head>

<body>
<header>
    <h1>Epic Rides Collection</h1>
    <a href="index.php">
        <i class="fa-solid fa-house fa-2xl"></i>
    </a>
</header>
<main>
    <h2>Add a Route to the Collection</h2>
    <p>
        Got any got recommendations for some Epic Rides? Feel free to add them to the current collection by completing
        the form below.
    </p>
    <form action="formValidation.php" method="post">
        <label for="name">Name of Route</label><br>
        <input type="text" maxlength="255" id="name" name="name" required><br>
        <label for="country">Which Country is it in?</label><br>
        <!-- for now this is a hardcoded list. In the future I should make this dynamic by getting Country list from db -->
        <select name="country" id="country" required>
            <?php
            $db = connectToDB('epic-rides');
            echo createOptionElement(getListOfCountries($db));
            ?>
        </select><br>
        <label for="region">Which Region of the Country is it in?</label><br>
        <select name="region" id="region" required>
            <option value="Lombardy">Lombardy</option>
            <option value="Isere">Isere</option>
            <option value="Somerset">Somerset</option>
            <option value="Tuscany">Tuscany</option>
            <option value="Stirlingshire">Stirlingshire</option>
            <option value="Michigan">Michigan</option>
            <option value="Canterbury">Canterbury</option>
            <option value="Yukon">Yukon</option>
            <option value="Marrakech-Safi">Marrakech-Safi</option>
            <option value="Gwynedd">Gwynedd</option>
            <option value="Sunnmore">Sunnmore</option>
            <option value="Tyrol">Tyrol</option>
        </select><br>
        <label for="discipline">Select a Discipline</label><br>
        <select name="discipline" id="discipline" required>
            <option value="road">Road</option>
            <option value="gravel">Gravel</option>
            <option value="mtb-crosscountry">Mountain Bike - Cross Country</option>
            <option value="mtb-downhill">Mountain Bike - Downhill</option>
        </select><br>
        <label for="url">Enter the URL for the image you would like display for this route</label><br>
        <input type="text" maxlength="255" id="url" name="url" required><br>
        <label for="alt_text">Short Description of Image</label><br>
        <input type="text" maxlength="255" id="alt_text" name="alt_text" required><br>
        <label for="distance">Distance (in Kilometers)</label><br>
        <input type="number" name="distance" id="distance" step="any"><br>
        <label for="effort_level">Effort Level</label><br>
        <select name="effort_level" id="effort_level" required>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
        </select><br>
        <label for="adrenaline_rating">Adrenaline Rating</label><br>
        <select name="adrenaline_rating" id="adrenaline_rating" required>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
        </select><br>
        <label for="short_description">Please provide a short description of your route</label><br>
        <input type="text" maxlength="255" id="short_description" name="short_description" required><br>
        <input type="submit" value="Submit">
    </form>
</main>
</body>
</html>
