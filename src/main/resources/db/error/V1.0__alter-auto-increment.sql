-- Currently being addressed in https://github.com/jOOQ/jOOQ/issues/9129
-- No workaround

CREATE TABLE `example` (
 `example_id` int(10) unsigned NOT NULL,
 PRIMARY KEY (`example_id`)
);

ALTER TABLE `example` ADD COLUMN `example_id` int(10) unsigned NOT NULL AUTO_INCREMENT;