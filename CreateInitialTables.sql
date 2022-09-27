-- 1. Create a Database called epic-rides
-- 2. Copy and paste the following SQL commands into Sequel Ace and run them to setup the Tables
DROP TABLE IF EXISTS `locations`;

CREATE TABLE `locations` (
                             `location_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
                             `country_name` varchar(255) NOT NULL,
                             `region` varchar(255) NOT NULL,
                             `continent` varchar(255) NOT NULL,
                             PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (1, 'Italy', 'Lombardy', 'Europe');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (2, 'France', 'Isere', 'Europe');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (3, 'United Kingdom', 'Somerset', 'Europe');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (4, 'Italy', 'Tuscany', 'Europe');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (5, 'United Kingdom', 'Stirlingshire', 'Europe');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (6, 'USA', 'Michigan', 'North America');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (7, 'New Zealand', 'Canterbury', 'Oceania');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (8, 'Canada', 'Yukon', 'North America');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (9, 'Morroco', 'Marrakech-Safi', 'North Africa');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (10, 'United Kingdom', 'Gwynedd', 'Europe');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (11, 'Norway', 'Sunnmore', 'Europe');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (12, 'Austria', 'Tyrol', 'Europe');

DROP TABLE IF EXISTS `routes`;

CREATE TABLE `routes` (
                               `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
                               `name` varchar(255) DEFAULT NULL,
                               `location_id` int(11) unsigned NOT NULL,
                               `distance` decimal(10,1) unsigned NOT NULL,
                               `discipline` varchar(255) DEFAULT NULL,
                               `effort_level` int(11) unsigned NOT NULL,
                               `adrenaline_rating` int(11) unsigned NOT NULL,
                               `short_description` varchar(255) DEFAULT NULL,
                               PRIMARY KEY (`id`),
                               CONSTRAINT `fk_routes_locations` FOREIGN KEY (`location_id`) REFERENCES `locations`(`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 /*Start autoincrement after initial data insert*/ DEFAULT CHARSET=latin1;

INSERT INTO `routes` (`id`, `name`, `location_id`, `distance`, `discipline`, `effort_level`, `adrenaline_rating`, `short_description`)
VALUES (1,
        'Passo Dello Stelvio',
        1,
        24.3,
        'road',
        4,
        1,
        'Passo dello Stelvio is "arguably the purest, most exhilarating, most spellbinding mountain playground accessible to cyclists."');
INSERT INTO `routes` (`id`, `name`, `location_id`, `distance`, `discipline`, `effort_level`, `adrenaline_rating`, `short_description`)
VALUES (2,
        "Alpe d'Huez",
        2,
        13.9,
        'road',
        3,
        1,
        "Alpe d'Huez really is the Mecca of cycling, and the ascent to Alpe d'Huez is truely a once in a lifetime experience!"
        );
INSERT INTO `routes` (`id`, `name`, `location_id`, `distance`, `discipline`, `effort_level`, `adrenaline_rating`, `short_description`)
VALUES (3,
        'Cheddar Gorge',
        3,
        4.3,
        'road',
        2,
        1,
        "Surrounded by druids and guarded by rangers, Somerset's Cheddar Gorge shows it got a lot more to offer than cider and cheese."
        );
INSERT INTO `routes` (`id`, `name`, `location_id`, `distance`, `discipline`, `effort_level`, `adrenaline_rating`, `short_description`)
VALUES (4,
        'Strade Bianchi',
        4,
        142.5,
        'gravel',
        3,
        3,
        '"Strade Bianche" means "white roads" and in Tuscany this expression refers to the network of unpaved back roads that run among the vineyards and olive groves of the Tuscan countryside.'
        );
INSERT INTO `routes` (`id`, `name`, `location_id`, `distance`, `discipline`, `effort_level`, `adrenaline_rating`, `short_description`)
VALUES (5,
        'Trossachs National Park',
        5,
        70.6,
        'gravel',
        3,
        3,
        'Blessed with endless miles of forest and estate tracks threading their way through hills and glens, the Trossachs are a gravel paradise.'
        );
INSERT INTO `routes` (`id`, `name`, `location_id`, `distance`, `discipline`, `effort_level`, `adrenaline_rating`, `short_description`)
VALUES (6,
        'Belgian Waffle Ride',
        6,
        217,
        'gravel',
        5,
        2,
        'The Belgian Waffle Ride serves up a tough 217Km course with fast pavement, loose gravel, rocky trails, and plenty of waffles.'
        );
INSERT INTO `routes` (`id`, `name`, `location_id`, `distance`, `discipline`, `effort_level`, `adrenaline_rating`, `short_description`)
VALUES (7,
        'The Old Ghost Road',
        7,
        85,
        'mtb-crosscountry',
        2,
        2,
        'The Old Ghost Road is not just a trail but a journey. This 85km point-to-point will have you climbing for a day through the green of the temperate rainforest before bursting above the tree line with views of rolling hill, after hill, after hill.'
        );
INSERT INTO `routes` (`id`, `name`, `location_id`, `distance`, `discipline`, `effort_level`, `adrenaline_rating`, `short_description`)
VALUES (8,
        'Mountain Hero Mine Trail',
        8,
        7.4,
        'mtb-crosscountry',
        3,
        3,
        'Standing at the top of the Yukon trail and surrounded by vast, empty wilderness, you feel great respect for the power of Mother Nature.'
        );
INSERT INTO `routes` (`id`, `name`, `location_id`, `distance`, `discipline`, `effort_level`, `adrenaline_rating`, `short_description`)
VALUES (9,
        'Tizi Mezzik Pass',
        9,
        54,
        'mtb-crosscountry',
        4,
        3,
        'The breathtaking Tizi Mezzik Pass at 2280m altitude from Imlil to Ouirgane offers immense views offer the High Atlas Mountains.'
        );
INSERT INTO `routes` (`id`, `name`, `location_id`, `distance`, `discipline`, `effort_level`, `adrenaline_rating`, `short_description`)
VALUES (10,
        'Rhyd Ddu',
        10,
        23.7,
        'mtb-downhill',
        1,
        4,
        "High and hard, with sharp rocks and mountain ridges on Wales's biggest hill."
        );
INSERT INTO `routes` (`id`, `name`, `location_id`, `distance`, `discipline`, `effort_level`, `adrenaline_rating`, `short_description`)
VALUES (11,
        'Mefjellet',
        11,
        12.8,
        'mtb-downhill',
        1,
        4,
        'Located about 6km from the Valldal valley, the Norwegian mountain Mefjellet makes for an imposing challenge.'
        );
INSERT INTO `routes` (`id`, `name`, `location_id`, `distance`, `discipline`, `effort_level`, `adrenaline_rating`, `short_description`)
VALUES (12,
        'Galitzenklamm Gorge',
        12,
        32.9,
        'mtb-downhill',
        1,
        5,
        "Renowned as a climbing and waterspouts destination, Austria's Galitzenklamm Gorge also offers some of the country's most difficult MTB trails. Radwanderung, in particular is the perfect foil for danger-seekers."
        );

DROP TABLE IF EXISTS `images`;

CREATE TABLE `images` (
                           `image_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
                           `route_id` int(11) unsigned NOT NULL,
                           `url` varchar(255) NOT NULL,
                           `alt_text` varchar(255) NOT NULL,
                           PRIMARY KEY (`image_id`),
                           CONSTRAINT `fk_images_routes` FOREIGN KEY (`route_id`) REFERENCES `routes`(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO `images` (`image_id`, `route_id`, `url`, `alt_text`)
VALUES (1,
        1,
        'https://images.unsplash.com/photo-1662363332703-2c5c4baa2b8d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        'Passo Dello Stelvio'
        );
INSERT INTO `images` (`image_id`, `route_id`, `url`, `alt_text`)
VALUES (2,
        2,
        'https://cyclist.b-cdn.net/sites/cyclist/files/styles/gallery_adv/public/2018/07/hc_climb_alpe_dhuez_01.jpg?itok=SKrhfgYl',
        "Alpe d''Huez"
       );
INSERT INTO `images` (`image_id`, `route_id`, `url`, `alt_text`)
VALUES (3,
        3,
        'https://cyclist.b-cdn.net/sites/cyclist/files/styles/insert_main_wide_image/public/cheddar_gorge_035.jpg?itok=lQSbOnAY',
        'Cheddar Gorge');
INSERT INTO `images` (`image_id`, `route_id`, `url`, `alt_text`)
VALUES (4,
        4,
        'https://alpsinsight.com/wp-content/uploads/2019/04/Cycling_Strade_Bianche_-1.jpg',
        'Strade Bianchi'
        );
INSERT INTO `images` (`image_id`, `route_id`, `url`, `alt_text`)
VALUES (5,
        5,
        'https://images.squarespace-cdn.com/content/v1/5d4428f4757d9c0001ab456c/99823340-88ef-4cdf-a0df-98da88cd4f0b/Bike+Hire+Loch+Lomond',
        'Trossachs National Park'
        );
INSERT INTO `images` (`image_id`, `route_id`, `url`, `alt_text`)
VALUES (6,
        6,
        'https://racing.trekbikes.com/wp-content/uploads/2021/05/image1-1.jpeg',
        'Belgian Waffle Ride'
        );
INSERT INTO `images` (`image_id`, `route_id`, `url`, `alt_text`)
VALUES (7,
        7,
        'https://h5d9a9f8.rocketcdn.me/wp-content/uploads/2018/02/Mountain-Bike-Tour-New-Zealand-HI-Adventures-Web-116.jpg',
        'The Old Ghost Road'
        );
INSERT INTO `images` (`image_id`, `route_id`, `url`, `alt_text`)
VALUES (8,
        8,
        'https://h5d9a9f8.rocketcdn.me/wp-content/uploads/2018/07/HI-Adventures-Mountain-Bike-Tour-Yukon-Low-54.jpg',
        'Mountain Hero Mine Trail'
        );
INSERT INTO `images` (`image_id`, `route_id`, `url`, `alt_text`)
VALUES (9,
        9,
        'https://h5d9a9f8.rocketcdn.me/wp-content/uploads/2018/08/HI-Adventures-Mountain-Bike-Tour-Morocco-Web-187.jpg',
        'Tizi Mezzik Pass'
        );
INSERT INTO `images` (`image_id`, `route_id`, `url`, `alt_text`)
VALUES (10,
        10,
        'https://keyassets.timeincuk.net/inspirewp/live/wp-content/uploads/sites/11/2013/06/rhyd-ddu-630x369.jpg',
        'Rhyd Ddu'
        );
INSERT INTO `images` (`image_id`, `route_id`, `url`, `alt_text`)
VALUES (11,
        11,
        'https://h5d9a9f8.rocketcdn.me/wp-content/uploads/2017/10/Mountainbike-Tour-Norway-Photo-Blog-27.jpg',
        'Mefjellet'
        );
INSERT INTO `images` (`image_id`, `route_id`, `url`, `alt_text`)
VALUES (12,
        12,
        'https://www.moredirt.com/trails/featured/bike-republic-solden.jpg',
        'Galitzenklamm Gorge'
        );


