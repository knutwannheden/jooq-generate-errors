
CREATE TABLE `example` (
 `example_id` int(10) unsigned NOT NULL,
 PRIMARY KEY (`example_id`)
);

ALTER TABLE `example` ADD COLUMN `field1` int(10) unsigned NOT NULL FIRST;
