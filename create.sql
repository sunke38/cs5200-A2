
use cs5200_fall2018_sun;
#enumeration privilege
CREATE TABLE privilege
(
privilege char(6) NOT NULL DEFAULT '',
PRIMARY KEY (privilege)
);

INSERT INTO privilege VALUES ("create");
INSERT INTO privilege VALUES ("read");
INSERT INTO privilege VALUES ("update");
INSERT INTO privilege VALUES ("delete");

#enumeration role
CREATE TABLE role
(
role char(8) NOT NULL DEFAULT '',
PRIMARY KEY (role)
);

INSERT INTO role VALUES ("owner");
INSERT INTO role VALUES ("admin");
INSERT INTO role VALUES ("writer");
INSERT INTO role VALUES ("editor");
INSERT INTO role VALUES ("reviewer");

CREATE TABLE person
(
Id Int,
firstName varchar(32),
lastName varchar(32),
username varchar(32),
password varchar(32),
email varchar(64),
dob Date,
PRIMARY KEY (Id)
);
CREATE TABLE phone
(
Id Int auto_increment,
Phone varchar(32),
primary_Phone Boolean,
Id_Person Int,
PRIMARY KEY (Id),
FOREIGN KEY (Id_Person) REFERENCES person(Id)
);

CREATE TABLE address
(
Id Int auto_increment,
street1 varchar(64),
street2 varchar(64),
city varchar(32),
state varchar(32),
zip varchar(32),
primary_address Boolean,
Id_Person Int,
PRIMARY KEY (Id),
FOREIGN KEY (Id_Person) REFERENCES person(Id)
);


CREATE TABLE user
(
Id Int auto_increment,
Id_Person Int,
userAgreement Boolean,
PRIMARY KEY (Id),
FOREIGN KEY (Id_Person) REFERENCES person(Id)
);

CREATE TABLE developer
(
Id Int auto_increment,
Id_Person Int,
developerkey varchar(1024),
PRIMARY KEY (Id),
FOREIGN KEY (Id_Person) REFERENCES Person(Id)
);

CREATE TABLE website
(
Id Int,
Id_developer int,
name varchar(32),
description varchar(2048),
created Date,
updated Date,
visits Int,
PRIMARY KEY (Id),
FOREIGN KEY (Id_developer) REFERENCES Developer(Id)
);

CREATE TABLE website_privilege
(
Id Int auto_increment,
    Id_developer int,
    Id_website int,
	privilege char(6) NOT NULL DEFAULT '',
    PRIMARY KEY (Id),
    FOREIGN KEY (privilege) REFERENCES Privilege(privilege),
    FOREIGN KEY (Id_website) REFERENCES Website(id),
    FOREIGN KEY (Id_developer) REFERENCES Developer(Id)
);
CREATE TABLE website_role
(
	Id Int auto_increment,
    Id_developer int,
    Id_website int,
	role char(8) NOT NULL DEFAULT '',
    PRIMARY KEY (Id),
    FOREIGN KEY (role) REFERENCES role(role),
    FOREIGN KEY (Id_website) REFERENCES Website(id),
    FOREIGN KEY (Id_developer) REFERENCES Developer(Id)
);

Create Table page(
	Id Int,
    title varchar(32),
    description varchar(2048),
    created Date,
    updated Date,
    Id_website int,
    visits Int,
    PRIMARY KEY (Id),
    FOREIGN KEY (Id_website) REFERENCES Website(id)
);

CREATE TABLE page_privilege
(
Id Int auto_increment,
    Id_developer int,
    Id_page int,
	privilege char(6) NOT NULL DEFAULT '',
    PRIMARY KEY (Id),
    FOREIGN KEY (privilege) REFERENCES Privilege(privilege),
    FOREIGN KEY (Id_page) REFERENCES Page(id),
    FOREIGN KEY (Id_developer) REFERENCES Developer(Id)
);
CREATE TABLE page_role
(
	Id Int auto_increment,
    Id_developer int,
    Id_page int,
	role char(8) NOT NULL DEFAULT '',
    PRIMARY KEY (Id),
    FOREIGN KEY (role) REFERENCES role(role),
    FOREIGN KEY (Id_page) REFERENCES Page(id),
    FOREIGN KEY (Id_developer) REFERENCES Developer(Id)
);
CREATE TABLE widget
(
	Id int,
	name varchar(32),
    width int,
    height int,
    cssClass varchar(64),
    cssStyle varchar(64),
    text varchar(2048),
    orders int,
    Id_page int,
    type varchar(32),
    size int,
    html varchar(2048),
    src varchar(2048),
    url varchar(2048),
    shareble Boolean,
    expandable Boolean,
    PRIMARY KEY (Id),
    FOREIGN KEY (Id_page) REFERENCES Page(id)
);
