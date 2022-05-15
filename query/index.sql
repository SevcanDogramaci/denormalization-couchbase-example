CREATE INDEX `index_1` ON `default`:`sample`.`_default`.`delivery_option` (`id`);
CREATE INDEX `index_1` ON `default`:`sample`.`migration`.`delivery_option` (`id`);
CREATE INDEX `index_2` ON `default`:`sample`.`migration`.`delivery_option_translation` (`delivery_option_id`);
CREATE INDEX `index_3` ON `default`:`sample`.`migration`.`delivery_option_translation` (`id`);
CREATE PRIMARY INDEX ON `default`:`sample`.`migration`.`delivery_option`;