<?php

// Function to connect to the database
function connectToDB(string $DBname)
{
// 1. Database Connection arguments
    $host = 'db';
    $user = 'root';
    $password = 'password';

    $dsn = "mysql:host=$host;dbname=$DBname";

    $options = [
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
    ];

    try {
        return new PDO($dsn, $user, $password, $options);
    } catch (\PDOException $exception) {
        throw new \PDOException($exception->getMessage(), (int)$exception->getCode());
    }
}

function displayCollection($pdo)
{
    //1. Prepare statement

    $query = $pdo->prepare(
        'SELECT 
        `routes`.`name`,
        `routes`.`distance`,
        `routes`.`discipline`,
        `routes`.`effort_level`,
        `routes`.`adrenaline_rating`,
        `routes`.`short_description`,
        `locations`.`country_name`,
        `locations`.`region`,
        `images`.`url`,
        `images`.`alt_text`
        FROM `routes`
        LEFT JOIN `locations` on `locations`.`location_id`=`routes`.`location_id`
        RIGHT JOIN `images` on `images`.`route_id`=`routes`.`id`;'
    );

    //2. Execute query

    $query->execute();
    $result = $query->fetchAll();

    //3. Array of Icon Tags
    $disciplineIcons = [
        'road'=> '<i class="fa-solid fa-road"></i>',
        'gravel' => '<i class="fa-solid fa-route"></i>',
        'mtb-crosscountry'=> '<i class="fa-solid fa-mound"></i>',
        'mtb-downhill'=> '<i class="fa-solid fa-mountain-sun"></i>'
    ];

    $collectionHTML = '';

    foreach ($result as $route) {
        $collectionHTML .=
        '<div class="card">'
            .'<div class="card-header">'
            . $disciplineIcons[$route['discipline']] .
                '<h2>' . $route['name'] . '</h2>'
                .'<p><strong>' . $route['region'] . '</strong> - ' . $route['country_name'] . '</p>'
            .'</div>'
            .'<img src="' . $route['url'] . '" alt="' . $route['alt_text'] .'">'
            .'<p>' . $route['short_description'] . '</p>'
            .'<div class="card-footer">'
                .'<p>Distance: ' . $route['distance'] . 'Km</p>'
                .'<p>Effort Level: ' . $route['effort_level'] . '</p>'
                .'<p>Adrenaline Rating: ' . $route['adrenaline_rating'] . '</p>'
                .'<i class="fa-solid fa-arrow-up-right-from-square"></i>'
            .'</div>'
        .'</div>';
    }

    return $collectionHTML;
}