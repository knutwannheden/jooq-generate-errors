
CREATE TABLE `example` (
 `example_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `field1` int(11) unsigned NOT NULL,
 PRIMARY KEY (`example_id`)
);

ALTER TABLE `example`
ADD COLUMN `field2` int(10) unsigned NOT NULL,
ADD COLUMN `field3` int(10) unsigned NOT NULL;
