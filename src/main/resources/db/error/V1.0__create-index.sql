
CREATE TABLE `example` (
 `example_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `index` int(10) unsigned NOT NULL,
 PRIMARY KEY (`example_id`),
 KEY `index_idx` (`index`)
);
