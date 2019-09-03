-- Currently being addressed in https://github.com/jOOQ/jOOQ/issues/9130
-- Workaround: remove the second name in the statement

CREATE TABLE `example` (
 `example_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 PRIMARY KEY (`example_id`)
);

CREATE TABLE `example_link` (
 `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `example_id` int(10) unsigned NOT NULL,
 PRIMARY KEY (`link_id`)
);

ALTER TABLE `example_link`
ADD CONSTRAINT `fk_example_link` FOREIGN KEY `fk_example_link` (`example_id`) REFERENCES `example` (`example_id`) ON DELETE CASCADE ON UPDATE CASCADE;
