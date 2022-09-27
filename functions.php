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

function getCollection($pdo)
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
    return $query->fetchAll();
}

function displayCollection($array)
{
    //Array of Icon Tags
    $disciplineIcons = [
        'road'=> '<i class="fa-solid fa-road fa-2xl"></i>',
        'gravel' => '<i class="fa-solid fa-route fa-2xl"></i>',
        'mtb-crosscountry'=> '<i class="fa-solid fa-mound fa-2xl"></i>',
        'mtb-downhill'=> '<i class="fa-solid fa-mountain-sun fa-2xl"></i>'
    ];

    $collectionHTML = '';

    foreach ($array as $route) {
        $collectionHTML .=
        '<div class="card">'
            .'<div class="card-header">'
                .'<div class="card-header-icon-holder">'
                    . $disciplineIcons[$route['discipline']]
                .'</div>'
                .'<h2>' . $route['name'] . '</h2>'
                .'<p><strong>' . $route['region'] . '</strong> - ' . $route['country_name'] . '</p>'
            .'</div>'
            .'<img src="' . $route['url'] . '" alt="' . $route['alt_text'] .'">'
            .'<p>' . $route['short_description'] . '</p>'
            .'<div class="card-footer">'
                .'<p><strong>Distance:</strong><br>' . $route['distance'] . ' Km</p>'
                .'<p><strong>Effort Level:</strong><br>' . $route['effort_level'] . '</p>'
                .'<p><strong>Adrenaline Rating:</strong><br>' . $route['adrenaline_rating'] . '</p>'
                .'<span class="material-symbols-outlined md-36">open_in_new</span>'
            .'</div>'
        .'</div>';
    }

    return $collectionHTML;
}