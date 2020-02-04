use cs5200_fall2018_sun;

INSERT INTO person (Id,firstName,lastName,username,password,email) VALUES (12,'Alice','Wonder','alice','alice','alice@wonder.com');
INSERT INTO person (Id,firstName,lastName,username,password,email) VALUES (23,'Bob','Marley','bob','bob','bob@marley.com');
INSERT INTO person (Id,firstName,lastName,username,password,email) VALUES (34,'Charles','Garcia','charlie','charlie','chuch@garcia.com');
INSERT INTO person (Id,firstName,lastName,username,password,email) VALUES (45,'Dan','Martin','dan','dan','dan@martin.com');
INSERT INTO person (Id,firstName,lastName,username,password,email) VALUES (56,'Ed','Karaz','ed','ed','ed@kar.com');

INSERT INTO developer (Id_Person,developerkey) VALUES ((select Id from person where username='alice'),'4321rewq');
INSERT INTO developer (Id_Person,developerkey) VALUES ((select Id from person where username='bob'),'5432trew');
INSERT INTO developer (Id_Person,developerkey) VALUES ((select Id from person where username='charlie'),'6543ytre');

INSERT INTO user (Id_Person,userAgreement) VALUES ((select Id from person where username='dan'),0);
INSERT INTO user (Id_Person,userAgreement) VALUES ((select Id from person where username='ed'),0);

-- CREATE TABLE website
-- (
-- Id Int,
-- Id_developer int,
-- name varchar(32),
-- description varchar(2048),
-- created Date,
-- updated Date,
-- visits Int,
-- PRIMARY KEY (Id),
-- FOREIGN KEY (Id_developer) REFERENCES Developer(Id)
-- );

INSERT INTO website (Id,name,description,visits) VALUES (123,'Facebook','an online social media and social networking service',1234234);
INSERT INTO website (Id,name,description,visits) VALUES (234,'Twitter','an online news and social networking service',4321543);
INSERT INTO website (Id,name,description,visits) VALUES (345,'Wikipedia','a free online encyclopedia',3456654);
INSERT INTO website (Id,name,description,visits) VALUES (456,'CNN','an American basic cable and satellite television news channel',6543345);
INSERT INTO website (Id,name,description,visits) VALUES (567,'CNET','an American media website that publishes reviews, news, articles, blogs, podcasts and videos on technology and consumer electronics',5433455);
INSERT INTO website (Id,name,description,visits) VALUES (678,'Gizmodo','a design, technology, science and science fiction website that also writes articles on politics',4322345);

-- CREATE TABLE website_role
-- (
-- 	Id Int auto_increment,
--     Id_developer int,
--     Id_website int,
-- 	role char(8) NOT NULL DEFAULT '',
--     PRIMARY KEY (Id),
--     FOREIGN KEY (role) REFERENCES Role(role),
--     FOREIGN KEY (Id_website) REFERENCES Website(id),
--     FOREIGN KEY (Id_developer) REFERENCES Developer(Id)
-- );

-- INSERT INTO role VALUES ("owner");
-- INSERT INTO role VALUES ("admin");
-- INSERT INTO role VALUES ("writer");
-- INSERT INTO role VALUES ("editor");
-- INSERT INTO role VALUES ("reviewer");

INSERT INTO website_role (Id_developer,role,Id_website) VALUES ((select Id from developer where Id_Person = (select Id from person where username='alice')),(select role from role where role="owner"),123);
INSERT INTO website_role (Id_developer,role,Id_website) VALUES ((select Id from developer where Id_Person = (select Id from person where username='bob')),(select role from role where role="editor"),123);
INSERT INTO website_role (Id_developer,role,Id_website) VALUES ((select Id from developer where Id_Person = (select Id from person where username='charlie')),(select role from role where role="admin"),123);

INSERT INTO website_role (Id_developer,role,Id_website) VALUES ((select Id from developer where Id_Person = (select Id from person where username='bob')),(select role from role where role="owner"),234);
INSERT INTO website_role (Id_developer,role,Id_website) VALUES ((select Id from developer where Id_Person = (select Id from person where username='charlie')),(select role from role where role="editor"),234);
INSERT INTO website_role (Id_developer,role,Id_website) VALUES ((select Id from developer where Id_Person = (select Id from person where username='alice')),(select role from role where role="admin"),234);

INSERT INTO website_role (Id_developer,role,Id_website) VALUES ((select Id from developer where Id_Person = (select Id from person where username='charlie')),(select role from role where role="owner"),345);
INSERT INTO website_role (Id_developer,role,Id_website) VALUES ((select Id from developer where Id_Person = (select Id from person where username='alice')),(select role from role where role="editor"),345);
INSERT INTO website_role (Id_developer,role,Id_website) VALUES ((select Id from developer where Id_Person = (select Id from person where username='bob')),(select role from role where role="admin"),345);

INSERT INTO website_role (Id_developer,role,Id_website) VALUES ((select Id from developer where Id_Person = (select Id from person where username='alice')),(select role from role where role="owner"),456);
INSERT INTO website_role (Id_developer,role,Id_website) VALUES ((select Id from developer where Id_Person = (select Id from person where username='bob')),(select role from role where role="editor"),456);
INSERT INTO website_role (Id_developer,role,Id_website) VALUES ((select Id from developer where Id_Person = (select Id from person where username='charlie')),(select role from role where role="admin"),456);

INSERT INTO website_role (Id_developer,role,Id_website) VALUES ((select Id from developer where Id_Person = (select Id from person where username='bob')),(select role from role where role="owner"),567);
INSERT INTO website_role (Id_developer,role,Id_website) VALUES ((select Id from developer where Id_Person = (select Id from person where username='charlie')),(select role from role where role="editor"),567);
INSERT INTO website_role (Id_developer,role,Id_website) VALUES ((select Id from developer where Id_Person = (select Id from person where username='alice')),(select role from role where role="admin"),567);

INSERT INTO website_role (Id_developer,role,Id_website) VALUES ((select Id from developer where Id_Person = (select Id from person where username='bob')),(select role from role where role="owner"),678);
INSERT INTO website_role (Id_developer,role,Id_website) VALUES ((select Id from developer where Id_Person = (select Id from person where username='charlie')),(select role from role where role="editor"),678);
INSERT INTO website_role (Id_developer,role,Id_website) VALUES ((select Id from developer where Id_Person = (select Id from person where username='alice')),(select role from role where role="admin"),678);