<?php
    require_once 'functions.php'
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1"> <!-- The responsive meta tag -->
    <title>Epic Rides</title>
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <script src="https://kit.fontawesome.com/59624a24a9.js" crossorigin="anonymous"></script>
</head>

<body>
    <header>
        <h1>Epic Rides Collection</h1>
        <a href="form.php">
            <i class="fa-regular fa-square-plus fa-2xl"></i>
        </a>
    </header>
    <main>
        <h2>Welcome to my Collection</h2>
        <p>
            Are you an avid cycling fan or looking to see where to have your next adventure? If so then you have come to
            the right place.
        </p>
        <div class="card-container">
            <?php
            $db = connectToDB('epic-rides');
            echo displayCollection(getCollection($db));
            ?>
        </div>
    </main>
</body>
</html>
