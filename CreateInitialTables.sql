-- 1. Create a Database called epic-rides
-- 2. Copy and paste the following SQL commands into Sequel Ace and run them to setup the Tables
DROP TABLE IF EXISTS `locations`;

CREATE TABLE `locations` (
    `location_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
    `country_name` varchar(255) NOT NULL,
    `region` varchar(255) NOT NULL,
    `continent` varchar(255) NOT NULL,
    PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=latin1;

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
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (13, 'Afghanistan', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (14, 'Akrotiri', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (15, 'Albania', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (16, 'Algeria', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (17, 'American Samoa', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (18, 'Andorra', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (19, 'Angola', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (20, 'Anguilla', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (21, 'Antarctica', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (22, 'Antigua and Barbuda', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (23, 'Argentina', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (24, 'Armenia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (25, 'Aruba', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (26, 'Ashmore and Cartier Islands', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (27, 'Australia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (28, 'Azerbaijan', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (29, 'Bahamas, The', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (30, 'Bahrain', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (31, 'Bangladesh', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (32, 'Barbados', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (33, 'Bassas da India', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (34, 'Belarus', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (35, 'Belgium', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (36, 'Belize', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (37, 'Benin', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (38, 'Bermuda', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (39, 'Bhutan', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (40, 'Bolivia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (41, 'Bosnia and Herzegovina', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (42, 'Botswana', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (43, 'Bouvet Island', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (44, 'Brazil', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (45, 'British Indian Ocean Territory', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (46, 'British Virgin Islands', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (47, 'Brunei', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (48, 'Bulgaria', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (49, 'Burkina Faso', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (50, 'Burma', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (51, 'Burundi', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (52, 'Cambodia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (53, 'Cameroon', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (54, 'Cape Verde', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (55, 'Cayman Islands', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (56, 'Central African Republic', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (57, 'Chad', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (58, 'Chile', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (59, 'China', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (60, 'Christmas Island', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (61, 'Clipperton Island', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (62, 'Cocos (Keeling) Islands', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (63, 'Colombia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (64, 'Comoros', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (65, 'Congo, Democratic Republic of the', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (66, 'Congo, Republic of the', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (67, 'Cook Islands', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (68, 'Coral Sea Islands', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (69, 'Costa Rica', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (70, 'Ivory Coast', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (71, 'Croatia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (72, 'Cuba', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (73, 'Cyprus', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (74, 'Czech Republic', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (75, 'Denmark', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (76, 'Dhekelia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (77, 'Djibouti', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (78, 'Dominica', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (79, 'Dominican Republic', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (80, 'Ecuador', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (81, 'Egypt', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (82, 'El Salvador', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (83, 'Equatorial Guinea', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (84, 'Eritrea', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (85, 'Estonia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (86, 'Ethiopia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (87, 'Europa Island', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (88, 'Falkland Islands (Islas Malvinas)', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (89, 'Faroe Islands', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (90, 'Fiji', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (91, 'Finland', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (92, 'French Guiana', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (93, 'French Polynesia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (94, 'French Southern and Antarctic Lands', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (95, 'Gabon', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (96, 'Gambia, The', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (97, 'Gaza Strip', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (98, 'Georgia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (99, 'Germany', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (100, 'Ghana', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (101, 'Gibraltar', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (102, 'Glorioso Islands', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (103, 'Greece', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (104, 'Greenland', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (105, 'Grenada', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (106, 'Guadeloupe', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (107, 'Guam', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (108, 'Guatemala', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (109, 'Guernsey', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (110, 'Guinea', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (111, 'Guinea-Bissau', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (112, 'Guyana', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (113, 'Haiti', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (114, 'Heard Island and McDonald Islands', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (115, 'Holy See (Vatican City)', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (116, 'Honduras', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (117, 'Hong Kong', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (118, 'Hungary', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (119, 'Iceland', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (120, 'India', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (121, 'Indonesia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (122, 'Iran', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (123, 'Iraq', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (124, 'Ireland', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (125, 'Isle of Man', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (126, 'Israel', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (127, 'Jamaica', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (128, 'Jan Mayen', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (129, 'Japan', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (130, 'Jersey', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (131, 'Jordan', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (132, 'Juan de Nova Island', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (133, 'Kazakhstan', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (134, 'Kenya', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (135, 'Kiribati', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (136, 'Korea, North', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (137, 'Korea, South', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (138, 'Kuwait', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (139, 'Kyrgyzstan', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (140, 'Laos', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (141, 'Latvia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (142, 'Lebanon', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (143, 'Lesotho', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (144, 'Liberia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (145, 'Libya', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (146, 'Liechtenstein', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (147, 'Lithuania', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (148, 'Luxembourg', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (149, 'Macau', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (150, 'Macedonia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (151, 'Madagascar', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (152, 'Malawi', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (153, 'Malaysia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (154, 'Maldives', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (155, 'Mali', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (156, 'Malta', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (157, 'Marshall Islands', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (158, 'Martinique', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (159, 'Mauritania', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (160, 'Mauritius', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (161, 'Mayotte', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (162, 'Mexico', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (163, 'Micronesia, Federated States of', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (164, 'Moldova', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (165, 'Monaco', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (166, 'Mongolia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (167, 'Montserrat', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (168, 'Mozambique', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (169, 'Namibia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (170, 'Nauru', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (171, 'Navassa Island', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (172, 'Nepal', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (173, 'Netherlands', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (174, 'Netherlands Antilles', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (175, 'New Caledonia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (176, 'New Zealand', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (177, 'Nicaragua', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (178, 'Niger', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (179, 'Nigeria', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (180, 'Niue', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (181, 'Norfolk Island', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (182, 'Northern Mariana Islands', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (183, 'Oman', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (184, 'Pakistan', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (185, 'Palau', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (186, 'Panama', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (187, 'Papua New Guinea', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (188, 'Paracel Islands', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (189, 'Paraguay', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (190, 'Peru', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (191, 'Philippines', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (192, 'Pitcairn Islands', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (193, 'Poland', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (194, 'Portugal', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (195, 'Puerto Rico', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (196, 'Qatar', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (197, 'Reunion', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (198, 'Romania', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (199, 'Russia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (200, 'Rwanda', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (201, 'Saint Helena', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (202, 'Saint Kitts and Nevis', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (203, 'Saint Lucia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (204, 'Saint Pierre and Miquelon', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (205, 'Saint Vincent and the Grenadines', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (206, 'Samoa', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (207, 'San Marino', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (208, 'Sao Tome and Principe', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (209, 'Saudi Arabia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (210, 'Senegal', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (211, 'Serbia and Montenegro', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (212, 'Seychelles', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (213, 'Sierra Leone', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (214, 'Singapore', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (215, 'Slovakia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (216, 'Slovenia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (217, 'Solomon Islands', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (218, 'Somalia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (219, 'South Africa', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (220, 'South Georgia and the South Sandwich Islands', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (221, 'Spain', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (222, 'Spratly Islands', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (223, 'Sri Lanka', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (224, 'Sudan', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (225, 'Suriname', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (226, 'Svalbard', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (227, 'Swaziland', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (228, 'Sweden', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (229, 'Switzerland', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (230, 'Syria', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (231, 'Taiwan', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (232, 'Tajikistan', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (233, 'Tanzania', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (234, 'Thailand', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (235, 'Timor-Leste', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (236, 'Togo', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (237, 'Tokelau', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (238, 'Tonga', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (239, 'Trinidad and Tobago', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (240, 'Tromelin Island', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (241, 'Tunisia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (242, 'Turkey', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (243, 'Turkmenistan', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (244, 'Turks and Caicos Islands', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (245, 'Tuvalu', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (246, 'Uganda', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (247, 'Ukraine', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (248, 'United Arab Emirates', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (249, 'Uruguay', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (250, 'Uzbekistan', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (251, 'Vanuatu', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (252, 'Venezuela', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (253, 'Vietnam', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (254, 'Virgin Islands', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (255, 'Wake Island', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (256, 'Wallis and Futuna', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (257, 'West Bank', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (258, 'Western Sahara', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (259, 'Yemen', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (260, 'Zambia', 'Placeholder', 'TBC');
INSERT INTO `locations` (`location_id`, `country_name`, `region`, `continent`) VALUES (261, 'Zimbabwe', 'Placeholder', 'TBC');

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
    `external_link` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_routes_locations` FOREIGN KEY (`location_id`) REFERENCES `locations`(`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 /*Start autoincrement after initial data insert*/ DEFAULT CHARSET=latin1;

INSERT INTO `routes` (`id`, `name`, `location_id`, `distance`, `discipline`, `effort_level`, `adrenaline_rating`, `short_description`, `external_link`)
VALUES (
    1,
    'Passo Dello Stelvio',
    1,
    24.3,
    'road',
    4,
    1,
    'Passo dello Stelvio is "arguably the purest, most exhilarating, most spellbinding mountain playground accessible to cyclists."',
    'https://www.roughguides.com/articles/epic-cycle-routes/'
    );
INSERT INTO `routes` (`id`, `name`, `location_id`, `distance`, `discipline`, `effort_level`, `adrenaline_rating`, `short_description`, `external_link`)
VALUES (
    2,
    "Alpe d'Huez",
    2,
    13.9,
    'road',
    3,
    1,
    "Alpe d'Huez really is the Mecca of cycling, and the ascent to Alpe d'Huez is truely a once in a lifetime experience!",
    'https://www.roughguides.com/articles/epic-cycle-routes/'
    );
INSERT INTO `routes` (`id`, `name`, `location_id`, `distance`, `discipline`, `effort_level`, `adrenaline_rating`, `short_description`, `external_link`)
VALUES (
    3,
    'Cheddar Gorge',
    3,
    4.3,
    'road',
    2,
    1,
    "Surrounded by druids and guarded by rangers, Somerset's Cheddar Gorge shows it got a lot more to offer than cider and cheese.",
    'https://www.roughguides.com/articles/epic-cycle-routes/'
    );
INSERT INTO `routes` (`id`, `name`, `location_id`, `distance`, `discipline`, `effort_level`, `adrenaline_rating`, `short_description`, `external_link`)
VALUES (
    4,
    'Strade Bianchi',
    4,
    142.5,
    'gravel',
    3,
    3,
    '"Strade Bianche" means "white roads" and in Tuscany this expression refers to the network of unpaved back roads that run among the vineyards and olive groves of the Tuscan countryside.',
    'https://www.roughguides.com/articles/epic-cycle-routes/'
    );
INSERT INTO `routes` (`id`, `name`, `location_id`, `distance`, `discipline`, `effort_level`, `adrenaline_rating`, `short_description`, `external_link`)
VALUES (
    5,
    'Trossachs National Park',
    5,
    70.6,
    'gravel',
    3,
    3,
    'Blessed with endless miles of forest and estate tracks threading their way through hills and glens, the Trossachs are a gravel paradise.',
    'https://www.roughguides.com/articles/epic-cycle-routes/'
    );
INSERT INTO `routes` (`id`, `name`, `location_id`, `distance`, `discipline`, `effort_level`, `adrenaline_rating`, `short_description`, `external_link`)
VALUES (
    6,
    'Belgian Waffle Ride',
    6,
    217,
    'gravel',
    5,
    2,
    'The Belgian Waffle Ride serves up a tough 217Km course with fast pavement, loose gravel, rocky trails, and plenty of waffles.',
    'https://www.roughguides.com/articles/epic-cycle-routes/'
    );
INSERT INTO `routes` (`id`, `name`, `location_id`, `distance`, `discipline`, `effort_level`, `adrenaline_rating`, `short_description`, `external_link`)
VALUES (
    7,
    'The Old Ghost Road',
    7,
    85,
    'mtb-crosscountry',
    2,
    2,
    'The Old Ghost Road is not just a trail but a journey. This 85km point-to-point will have you climbing for a day through the green of the temperate rainforest before bursting above the tree line with views of rolling hill, after hill, after hill.',
    'https://www.roughguides.com/articles/epic-cycle-routes/'
    );
INSERT INTO `routes` (`id`, `name`, `location_id`, `distance`, `discipline`, `effort_level`, `adrenaline_rating`, `short_description`, `external_link`)
VALUES (
    8,
    'Mountain Hero Mine Trail',
    8,
    7.4,
    'mtb-crosscountry',
    3,
    3,
    'Standing at the top of the Yukon trail and surrounded by vast, empty wilderness, you feel great respect for the power of Mother Nature.',
    'https://www.roughguides.com/articles/epic-cycle-routes/'
    );
INSERT INTO `routes` (`id`, `name`, `location_id`, `distance`, `discipline`, `effort_level`, `adrenaline_rating`, `short_description`, `external_link`)
VALUES (
    9,
    'Tizi Mezzik Pass',
    9,
    54,
    'mtb-crosscountry',
    4,
    3,
    'The breathtaking Tizi Mezzik Pass at 2280m altitude from Imlil to Ouirgane offers immense views offer the High Atlas Mountains.',
    'https://www.roughguides.com/articles/epic-cycle-routes/'
    );
INSERT INTO `routes` (`id`, `name`, `location_id`, `distance`, `discipline`, `effort_level`, `adrenaline_rating`, `short_description`, `external_link`)
VALUES (
    10,
    'Rhyd Ddu',
    10,
    23.7,
    'mtb-downhill',
    1,
    4,
    "High and hard, with sharp rocks and mountain ridges on Wales's biggest hill.",
    'https://www.roughguides.com/articles/epic-cycle-routes/'
    );
INSERT INTO `routes` (`id`, `name`, `location_id`, `distance`, `discipline`, `effort_level`, `adrenaline_rating`, `short_description`, `external_link`)
VALUES (
    11,
    'Mefjellet',
    11,
    12.8,
    'mtb-downhill',
    1,
    4,
    'Located about 6km from the Valldal valley, the Norwegian mountain Mefjellet makes for an imposing challenge.',
    'https://www.roughguides.com/articles/epic-cycle-routes/'
    );
INSERT INTO `routes` (`id`, `name`, `location_id`, `distance`, `discipline`, `effort_level`, `adrenaline_rating`, `short_description`, `external_link`)
VALUES (
    12,
    'Galitzenklamm Gorge',
    12,
    32.9,
    'mtb-downhill',
    1,
    5,
    "Renowned as a climbing and waterspouts destination, Austria's Galitzenklamm Gorge also offers some of the country's most difficult MTB trails. Radwanderung, in particular is the perfect foil for danger-seekers.",
    'https://www.roughguides.com/articles/epic-cycle-routes/'
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
VALUES (
    1,
    1,
    'https://images.unsplash.com/photo-1662363332703-2c5c4baa2b8d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    'Passo Dello Stelvio'
    );
INSERT INTO `images` (`image_id`, `route_id`, `url`, `alt_text`)
VALUES (
    2,
    2,
    'https://cyclist.b-cdn.net/sites/cyclist/files/styles/gallery_adv/public/2018/07/hc_climb_alpe_dhuez_01.jpg?itok=SKrhfgYl',
    "Alpe d''Huez"
   );
INSERT INTO `images` (`image_id`, `route_id`, `url`, `alt_text`)
VALUES (
    3,
    3,
    'https://cyclist.b-cdn.net/sites/cyclist/files/styles/insert_main_wide_image/public/cheddar_gorge_035.jpg?itok=lQSbOnAY',
    'Cheddar Gorge'
    );
INSERT INTO `images` (`image_id`, `route_id`, `url`, `alt_text`)
VALUES (
    4,
    4,
    'https://alpsinsight.com/wp-content/uploads/2019/04/Cycling_Strade_Bianche_-1.jpg',
    'Strade Bianchi'
    );
INSERT INTO `images` (`image_id`, `route_id`, `url`, `alt_text`)
VALUES (
    5,
    5,
    'https://images.squarespace-cdn.com/content/v1/5d4428f4757d9c0001ab456c/99823340-88ef-4cdf-a0df-98da88cd4f0b/Bike+Hire+Loch+Lomond',
    'Trossachs National Park'
    );
INSERT INTO `images` (`image_id`, `route_id`, `url`, `alt_text`)
VALUES (
    6,
    6,
    'https://racing.trekbikes.com/wp-content/uploads/2021/05/image1-1.jpeg',
    'Belgian Waffle Ride'
    );
INSERT INTO `images` (`image_id`, `route_id`, `url`, `alt_text`)
VALUES (
    7,
    7,
    'https://h5d9a9f8.rocketcdn.me/wp-content/uploads/2018/02/Mountain-Bike-Tour-New-Zealand-HI-Adventures-Web-116.jpg',
    'The Old Ghost Road'
    );
INSERT INTO `images` (`image_id`, `route_id`, `url`, `alt_text`)
VALUES (
    8,
    8,
    'https://h5d9a9f8.rocketcdn.me/wp-content/uploads/2018/07/HI-Adventures-Mountain-Bike-Tour-Yukon-Low-54.jpg',
    'Mountain Hero Mine Trail'
    );
INSERT INTO `images` (`image_id`, `route_id`, `url`, `alt_text`)
VALUES (
    9,
    9,
    'https://h5d9a9f8.rocketcdn.me/wp-content/uploads/2018/08/HI-Adventures-Mountain-Bike-Tour-Morocco-Web-187.jpg',
    'Tizi Mezzik Pass'
    );
INSERT INTO `images` (`image_id`, `route_id`, `url`, `alt_text`)
VALUES (
    10,
    10,
    'https://keyassets.timeincuk.net/inspirewp/live/wp-content/uploads/sites/11/2013/06/rhyd-ddu-630x369.jpg',
    'Rhyd Ddu'
    );
INSERT INTO `images` (`image_id`, `route_id`, `url`, `alt_text`)
VALUES (
    11,
    11,
    'https://h5d9a9f8.rocketcdn.me/wp-content/uploads/2017/10/Mountainbike-Tour-Norway-Photo-Blog-27.jpg',
    'Mefjellet'
    );
INSERT INTO `images` (`image_id`, `route_id`, `url`, `alt_text`)
VALUES (
    12,
    12,
    'https://www.moredirt.com/trails/featured/bike-republic-solden.jpg',
    'Galitzenklamm Gorge'
    );

