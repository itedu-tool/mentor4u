create table tab_account
(
    id         int auto_increment
        primary key,
    nickname   varchar(30)          not null,
    pass       varchar(20)          not null,
    photo_link varchar(250)         null,
    rating     int        default 0 not null,
    email      varchar(25)          not null,
    is_blocked tinyint(1) default 0 not null
);

create table tab_human
(
    id         int auto_increment
        primary key,
    firstname  varchar(30) not null,
    lastname   varchar(30) not null,
    age        int         null,
    sex        char        null,
    profession varchar(50) null,
    id_account int         not null,
    constraint human_account_id_fk
        foreign key (id_account) references account (id)
);

create table tab_message
(
    id          int auto_increment
        primary key,
    id_account  int      not null,
    id_recevier int      not null,
    creation    datetime not null,
    body        text     not null,
    constraint message_account_id_fk
        foreign key (id_account) references account (id)
);

create table tab_rating
(
    id         int auto_increment
        primary key,
    id_account int           not null,
    count      int default 0 not null,
    constraint rating_account_id_fk
        foreign key (id_account) references account (id)
);

create table tab_role
(
    id   int auto_increment
        primary key,
    name varchar(20) not null
);

create table tab_account_role
(
    id         int auto_increment
        primary key,
    id_account int not null,
    id_role    int not null,
    constraint account_role_account_id_fk
        foreign key (id_account) references account (id),
    constraint account_role_role_id_fk
        foreign key (id_role) references role (id)
);

create table tab_social_links
(
    id         int auto_increment
        primary key,
    Id_account int          not null,
    image_link varchar(250) null,
    body       varchar(250) not null,
    constraint social_links_account_id_fk
        foreign key (Id_account) references account (id)
);

create table tab_students
(
    id         int auto_increment
        primary key,
    id_account int not null,
    id_student int not null,
    constraint students_account_id_fk
        foreign key (id_account) references account (id)
);

create table tab_user_competences
(
    id         int auto_increment
        primary key,
    id_account int  not null,
    name       text not null,
    years      int  null,
    constraint user_competences_account_id_fk
        foreign key (id_account) references account (id)
);


