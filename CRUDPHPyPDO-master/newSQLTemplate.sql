create table if not exists datos(
    idDato INT UNSIGNED not null auto_increment,
    nombre VARCHAR(250) character set utf8 collate utf8_spanish_ci,
    descri VARCHAR(250) character set utf8 collate utf8_spanish_ci,
    primary key(idDato)
)engine=myisam character set utf8 collate utf8_spanish_ci;
