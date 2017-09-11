SET NAMES utf8mb4;

INSERT INTO `assets` VALUES (2, 1, 'folder', 'documents', '/', NULL, 1505140576, 1505140576, 2, 2, 'a:0:{}', 0);
INSERT INTO `assets` VALUES (3, 1, 'folder', 'images', '/', NULL, 1505140572, 1505140572, 2, 2, 'a:0:{}', 0);
INSERT INTO `assets` VALUES (4, 2, 'document', 'adobe-pdf.pdf', '/documents/', 'application/pdf', 1505141170, 1505141660, 2, 2, 'a:0:{}', 0);
INSERT INTO `assets` VALUES (5, 2, 'document', 'microsoft-word.docx', '/documents/', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 1505141170, 1505141653, 2, 2, 'a:0:{}', 0);
INSERT INTO `assets` VALUES (6, 2, 'document', 'microsoft-powerpoint.pptx', '/documents/', 'application/vnd.openxmlformats-officedocument.presentationml.presentation', 1505141170, 1505141669, 2, 2, 'a:0:{}', 0);
INSERT INTO `assets` VALUES (7, 2, 'document', 'microsoft-excel.xlsx', '/documents/', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 1505141170, 1505141676, 2, 2, 'a:0:{}', 0);
INSERT INTO `assets` VALUES (8, 3, 'image', 'coast-deer.jpeg', '/images/', 'image/jpeg', 1505141522, 1505141522, 2, 2, 'a:3:{s:10:\"imageWidth\";i:1920;s:11:\"imageHeight\";i:1080;s:25:\"imageDimensionsCalculated\";b:1;}', 0);
INSERT INTO `assets` VALUES (9, 3, 'image', 'lake-mirror.jpg', '/images/', 'image/jpeg', 1505141522, 1505141522, 2, 2, 'a:3:{s:10:\"imageWidth\";i:1920;s:11:\"imageHeight\";i:1080;s:25:\"imageDimensionsCalculated\";b:1;}', 0);
INSERT INTO `assets` VALUES (10, 3, 'image', 'schloss-moritzburg.jpg', '/images/', 'image/jpeg', 1505141522, 1505141522, 2, 2, 'a:3:{s:10:\"imageWidth\";i:1920;s:11:\"imageHeight\";i:1080;s:25:\"imageDimensionsCalculated\";b:1;}', 0);
INSERT INTO `assets` VALUES (11, 3, 'image', 'winter-bus.jpg', '/images/', 'image/jpeg', 1505141522, 1505141522, 2, 2, 'a:3:{s:10:\"imageWidth\";i:1920;s:11:\"imageHeight\";i:1080;s:25:\"imageDimensionsCalculated\";b:1;}', 0);
INSERT INTO `assets` VALUES (12, 3, 'image', 'sunset.jpeg', '/images/', 'image/jpeg', 1505141522, 1505141522, 2, 2, 'a:3:{s:10:\"imageWidth\";i:1920;s:11:\"imageHeight\";i:1080;s:25:\"imageDimensionsCalculated\";b:1;}', 0);

INSERT INTO `documents` VALUES (1, 0, 'page', '', '/', 999999, 1, 1368522989, 1505139865, 1, 2);
INSERT INTO `documents` VALUES (2, 1, 'page', 'impressum', '/', 0, 1, 1505139774, 1505139846, 2, 2);
INSERT INTO `documents` VALUES (3, 1, 'page', 'error', '/', 1, 1, 1503510199, 1505139888, 2, 2);
INSERT INTO `documents_page` VALUES (1, NULL, '@AppBundle\\Controller\\DefaultController', 'default', NULL, 'Startseite', '', 'a:0:{}', NULL, 0, '', 0);
INSERT INTO `documents_page` VALUES (2, NULL, '@AppBundle\\Controller\\DefaultController', 'imprint', NULL, 'Impressum', '', 'a:0:{}', NULL, NULL, '', 0);
INSERT INTO `documents_page` VALUES (3, NULL, '@AppBundle\\Controller\\ErrorController', 'error', NULL, 'Error', '', 'a:0:{}', NULL, NULL, '', 0);

UPDATE `users`
SET `firstname` = 'Adrian',
  `lastname` = 'Hess',
  `email` = 'support@w-vision.ch',
  `welcomescreen` = '0',
  `closeWarning` = '1',
  `memorizeTabs` = '1',
  `allowDirtyClose` = '1'
WHERE `name` = 'wvision';