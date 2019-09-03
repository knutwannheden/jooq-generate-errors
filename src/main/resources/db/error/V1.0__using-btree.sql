-- Currently being addressed in https://github.com/jOOQ/jOOQ/issues/9132
-- Workaround: remove the USING BTREE clause

CREATE TABLE `example` (
 `example_id` int(10) unsigned NOT NULL
);

ALTER TABLE `example` ADD PRIMARY KEY (`example_id`) USING BTREE;