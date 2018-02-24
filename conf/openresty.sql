create table if not exists rule (
    id int unsigned not null auto_increment,
    rule_name varchar(200) COMMENT '规则名称',
    forward_path varchar(200) COMMENT '源地址',
    source_address varchar(200) COMMENT '源地址',
    before_behaviors varchar(200) COMMENT '转发前行为',
    after_behaviors varchar(200) COMMENT '转发前行为',
    created_at int unsigned COMMENT '创建时间',
    updated_at int unsigned COMMENT '最后修改时间',
    primary key(id)
)engine=InnoDB default charset=utf8mb4;