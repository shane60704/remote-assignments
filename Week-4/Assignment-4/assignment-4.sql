Select `article`.`title`,`article`.`content`,`user`.`email` 
FROM `user` JOIN `article` ON `user`.`id` = `article`.`author_id`;

Select * FROM `article` 
ORDER BY `id` 
LIMIT 6,6;



