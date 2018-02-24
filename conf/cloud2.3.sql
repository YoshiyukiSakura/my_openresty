# 为云服务器添加project_name
ALTER TABLE `yun_server` ADD `project_name` VARCHAR(30) NOT NULL DEFAULT 'admin' AFTER `image_id`;
# 为安全组添加project_name
ALTER TABLE `yun_security_group` ADD `project_name` VARCHAR(30) NOT NULL DEFAULT 'admin' AFTER `user_id`;
# 为安硬盘添加project_name
ALTER TABLE `yun_volume_server` ADD `project_name` VARCHAR(30) NOT NULL DEFAULT 'admin' AFTER `user_id`;

# 为创建队列添加status状态机制
ALTER TABLE `yun_server_queue` ADD `task_status` int(3) NOT NULL DEFAULT 1 AFTER `order_type`;
