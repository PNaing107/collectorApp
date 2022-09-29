<?php

/**
 * Function to connect to the database
 * @param string $DBname
 * @return PDO
 */
function connectToDB(string $DBname): PDO
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

/**
 * Function to get data from database
 * @param PDO $pdo
 * @return array
 */
function getCollection(PDO $pdo): array
{
    //1. Prepare statement
    $query = $pdo->prepare(
        'SELECT
        `routes`.`id`,
        `routes`.`name`,
        `routes`.`distance`,
        `routes`.`discipline`,
        `routes`.`effort_level`,
        `routes`.`adrenaline_rating`,
        `routes`.`short_description`,
        `routes`.`external_link`,
        `locations`.`country_name`,
        `locations`.`region`,
        `images`.`url`,
        `images`.`alt_text`
        FROM `routes`
        LEFT JOIN `locations` on `locations`.`location_id`=`routes`.`location_id`
        RIGHT JOIN `images` on `images`.`route_id`=`routes`.`id`
        ORDER BY `routes`.`id` DESC;'
    );

    //2. Execute query
    $query->execute();
    return $query->fetchAll();
}


/**
 * Function to return a string representing HTML for each collection item card
 * @param array $array
 * @return string
 */
function displayCollection(array $array): string
{
    //Check if array is empty and show error message if true
    if (!$array) {
        return 'Error: No items have been found please check Database.';
    }

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
                    .'<a href="html/explainer.html">'
                        . $disciplineIcons[$route['discipline']]
                    .'</a>'
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
                .'<a href="' . $route['external_link'] .'" target="_blank">'
                    .'<span class="material-symbols-outlined md-36">open_in_new</span>'
                .'</a>'
            .'</div>'
        .'</div>';
    }

    return $collectionHTML;
}

/**
 * Query Database for all distinct countries
 * @param PDO $pdo
 * @return array
 */
function getListOfCountries(PDO $pdo): array
{
    //1. Prepare statement
    $query = $pdo->prepare('SELECT DISTINCT `country_name` FROM `locations`;');

    //2. Execute query
    $query->execute();
    return $query->fetchAll();
}

/**
 * Query Database for all distinct regions
 * @param PDO $pdo
 * @return array
 */
function getListOfRegions(PDO $pdo): array
{
    //1. Prepare statement
    $query = $pdo->prepare('SELECT DISTINCT `region` FROM `locations`;');

    //2. Execute query
    $query->execute();
    return $query->fetchAll();
}

/**
 * Function to generate drop down options given an array
 * @param array $array associative array of drop down options
 * @param string $key the key of the value required in the drop down option
 * @return string
 */
function createOptionElement(array $array, string $key): string
{
    $optionHTML = '';

    foreach ($array as $option) {
        $optionHTML .= '<option value="' . $option[$key] . '">' . $option[$key] . '</option>';
    }

    return $optionHTML;
}

/**
 * Function to insert form data into database
 * @param PDO $pdo
 * @return string
 */
function addCollectionItem(PDO $pdo): string
{
    // 1. Get location_id
    $query = $pdo->prepare('SELECT `location_id` FROM `locations` WHERE `country_name`= :country_name AND `region`= :region;');
    $query->bindParam(':country_name',$_POST['country']);
    $query->bindParam(':region',$_POST['region']);

    // 2. Execute query
    $query->execute();

    $result = $query->fetchAll();
    (int) $location_id = $result[0]['location_id'];

    // 3. Insert Statement into `routes`
    $query = $pdo->prepare(
'INSERT INTO `routes` (`name`, `location_id`, `distance`, `discipline`, `effort_level`, `adrenaline_rating`, `short_description`)'.
    ' VALUES (:name, :location_id, :distance, :discipline, :effort_level, :adrenaline_rating, :short_description);'
    );

    $query->bindParam(':name',$_POST['name']);

    $query->bindParam(':location_id',$location_id);

    $distance = round($_POST['distance'],1);
    $query->bindParam(':distance', $distance);

    $query->bindParam(':discipline', $_POST['discipline']);

    (int) $effort_level = $_POST['effort_level'];
    $query->bindParam(':effort_level', $effort_level);

    (int) $adrenaline_rating = $_POST['adrenaline_rating'];
    $query->bindParam(':adrenaline_rating', $adrenaline_rating);

    $query->bindParam(':short_description', $_POST['short_description']);

    $query->execute();

    // 4. Get Route ID. Assuming INSERT into `routes` worked the largest `id` will be the `route_id`
    // (this approach seems inefficient)
    $query = $pdo->prepare('SELECT max(`id`) AS `id` FROM `routes`;');
    $query->execute();
    $result = $query->fetchAll();
    (int) $route_id = $result[0]['id'];

    // 5. Insert Statement into `images`
    $query = $pdo->prepare(
        'INSERT INTO `images` (`route_id`,`url`, `alt_text`)'.
        ' VALUES (:route_id, :url, :alt_text);'
    );

    $query->bindParam(':route_id', $route_id);
    $query->bindParam(':url', $_POST['url']);
    $query->bindParam(':alt_text', $_POST['alt_text']);
    $query->execute();

    return
        '<h2>Your Route was Successfully added to the collection!</h2>
        <a href="index.php">Return Back to Collection</a>';
}

/**
 * Checks if strings from form text inputs are valid
 * @param array $stringFields
 * @return array|bool[]
 */
function checkStringInput(array $stringFields): array
{
    foreach ($stringFields as $key => $value) {
        if (!is_string($_POST[$key]) | strlen($_POST[$key]) == 0 | strlen($_POST[$key]) > 255) {
            return [false, $value];
        }
    }
    return [true];

}

/**
 * Checks if string for URL from text input is valid
 * @param string $url
 * @return bool
 */
function validateURL(string $url): bool
{
    if (!filter_var($url, FILTER_VALIDATE_URL)) {
        return false;
    }
    return true;
}
