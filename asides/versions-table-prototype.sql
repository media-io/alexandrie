-- MySQL version (needs to be adjusted for other backends)
create table versions (
    id bigint not null auto_increment unique primary key,
    crate_id bigint not null,
    num varchar(128) not null,
    downloads bigint not null default 0,
    created_at varchar(25) not null default concat(utc_date(), " ", utc_time()),
    updated_at varchar(25) not null default concat(utc_date(), " ", utc_time()),
    yanked bool not null default false,
    published_by bigint unsigned not null,
    foreign key (crate_id) references crates(id) on update cascade on delete cascade,
    foreign key (published_by) references authors(id) on update cascade on delete cascade,
);