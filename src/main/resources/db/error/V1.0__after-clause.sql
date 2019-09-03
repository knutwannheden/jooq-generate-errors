-- Currently being addressed in https://github.com/jOOQ/jOOQ/issues/7241
-- Workaround: remove the AFTER statement

SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE `example` (
 `example_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `field1` int(11) unsigned NOT NULL,
 `field2` decimal(10,8) NOT NULL,
 PRIMARY KEY (`example_id`)
);

ALTER TABLE `example` ADD COLUMN `field3` varchar(32) NULL AFTER `field2`;

SET FOREIGN_KEY_CHECKS = 1;