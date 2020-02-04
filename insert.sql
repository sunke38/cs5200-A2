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


INSERT INTO website (Id,name,description,created,updated,visits) VALUES (123,'Facebook','an online social media and social networking service','20200106','20200204',1234234);
INSERT INTO website (Id,name,description,created,updated,visits) VALUES (234,'Twitter','an online news and social networking service','20200106','20200204',4321543);
INSERT INTO website (Id,name,description,created,updated,visits) VALUES (345,'Wikipedia','a free online encyclopedia','20200106','20200204',3456654);
INSERT INTO website (Id,name,description,created,updated,visits) VALUES (456,'CNN','an American basic cable and satellite television news channel','20200106','20200204',6543345);
INSERT INTO website (Id,name,description,created,updated,visits) VALUES (567,'CNET','an American media website that publishes reviews, news, articles, blogs, podcasts and videos on technology and consumer electronics','20200106','20200204',5433455);
INSERT INTO website (Id,name,description,created,updated,visits) VALUES (678,'Gizmodo','a design, technology, science and science fiction website that also writes articles on politics','20200106','20200204',4322345);



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


INSERT INTO page (Id,title,description,Id_website,created,updated,visits) VALUES (123,'Home','Landing page',(select Id from website where name = 'CNET'),'20200106','20200204',1234234);
INSERT INTO page (Id,title,description,Id_website,created,updated,visits) VALUES (234,'About','Website description',(select Id from website where name = 'Gizmodo'),'20200106','20200204',234545);
INSERT INTO page (Id,title,description,Id_website,created,updated,visits) VALUES (345,'Contact','Addresses, phones, and contact info',(select Id from website where name = 'Wikipedia'),'20200106','20200204',345656);
INSERT INTO page (Id,title,description,Id_website,created,updated,visits) VALUES (456,'Preferences','Where users can configure their preferences',(select Id from website where name = 'CNN'),'20200106','20200204',456776);
INSERT INTO page (Id,title,description,Id_website,created,updated,visits) VALUES (567,'Profile','Users can configure their personal information',(select Id from website where name = 'CNET'),'20200106','20200204',567878);

INSERT INTO page_role (Id_developer,role,Id_page) VALUES ((select Id from developer where Id_Person = (select Id from person where username='alice')),(select role from role where role="editor"),123);
INSERT INTO page_role (Id_developer,role,Id_page) VALUES ((select Id from developer where Id_Person = (select Id from person where username='bob')),(select role from role where role="reviewer"),123);
INSERT INTO page_role (Id_developer,role,Id_page) VALUES ((select Id from developer where Id_Person = (select Id from person where username='charlie')),(select role from role where role="writer"),123);

INSERT INTO page_role (Id_developer,role,Id_page) VALUES ((select Id from developer where Id_Person = (select Id from person where username='bob')),(select role from role where role="editor"),234);
INSERT INTO page_role (Id_developer,role,Id_page) VALUES ((select Id from developer where Id_Person = (select Id from person where username='charlie')),(select role from role where role="reviewer"),234);
INSERT INTO page_role (Id_developer,role,Id_page) VALUES ((select Id from developer where Id_Person = (select Id from person where username='alice')),(select role from role where role="writer"),234);

INSERT INTO page_role (Id_developer,role,Id_page) VALUES ((select Id from developer where Id_Person = (select Id from person where username='charlie')),(select role from role where role="editor"),345);
INSERT INTO page_role (Id_developer,role,Id_page) VALUES ((select Id from developer where Id_Person = (select Id from person where username='alice')),(select role from role where role="reviewer"),345);
INSERT INTO page_role (Id_developer,role,Id_page) VALUES ((select Id from developer where Id_Person = (select Id from person where username='bob')),(select role from role where role="writer"),345);

INSERT INTO page_role (Id_developer,role,Id_page) VALUES ((select Id from developer where Id_Person = (select Id from person where username='alice')),(select role from role where role="editor"),456);
INSERT INTO page_role (Id_developer,role,Id_page) VALUES ((select Id from developer where Id_Person = (select Id from person where username='bob')),(select role from role where role="reviewer"),456);
INSERT INTO page_role (Id_developer,role,Id_page) VALUES ((select Id from developer where Id_Person = (select Id from person where username='charlie')),(select role from role where role="writer"),456);

INSERT INTO page_role (Id_developer,role,Id_page) VALUES ((select Id from developer where Id_Person = (select Id from person where username='bob')),(select role from role where role="editor"),567);
INSERT INTO page_role (Id_developer,role,Id_page) VALUES ((select Id from developer where Id_Person = (select Id from person where username='charlie')),(select role from role where role="reviewer"),567);
INSERT INTO page_role (Id_developer,role,Id_page) VALUES ((select Id from developer where Id_Person = (select Id from person where username='alice')),(select role from role where role="writer"),567);

INSERT INTO widget (Id,name,type,text,orders,width,height,url,Id_page) VALUES(123,'head123','heading','Welcome',0,null,null,null,(select Id from page where title = 'Home'));
INSERT INTO widget (Id,name,type,text,orders,width,height,url,Id_page) VALUES(234,'post234','html','<p>Lorem</p>',0,null,null,null,(select Id from page where title = 'About'));
INSERT INTO widget (Id,name,type,text,orders,width,height,url,Id_page) VALUES(345,'head345','heading','Hi',1,null,null,null,(select Id from page where title = 'Contact'));
INSERT INTO widget (Id,name,type,text,orders,width,height,url,Id_page) VALUES(456,'intro456','html','<h1>Hi</h1>',2,null,null,null,(select Id from page where title = 'Contact'));
INSERT INTO widget (Id,name,type,text,orders,width,height,url,Id_page) VALUES(567,'image345','image','null',3,50,100,'/img/567.png',(select Id from page where title = 'Contact'));
INSERT INTO widget (Id,name,type,text,orders,width,height,url,Id_page) VALUES(678,'video456','youtube','null',0,400,300,'https://youtu.be/h67VX51QXiQ',(select Id from page where title = 'Preferences'));

INSERT INTO phone (Phone,primary_Phone,Id_Person) VALUES ('123-234-3456',True,(select Id from person where username='alice'));
INSERT INTO phone (Phone,primary_Phone,Id_Person) VALUES ('234-345-4566',false,(select Id from person where username='alice'));
INSERT INTO phone (Phone,primary_Phone,Id_Person) VALUES ('345-456-5677',True,(select Id from person where username='bob'));
INSERT INTO phone (Phone,primary_Phone,Id_Person) VALUES ('321-432-5435',True,(select Id from person where username='charlie'));
INSERT INTO phone (Phone,primary_Phone,Id_Person) VALUES ('432-432-5433',false,(select Id from person where username='charlie'));
INSERT INTO phone (Phone,primary_Phone,Id_Person) VALUES ('543-543-6544',false,(select Id from person where username='charlie'));


INSERT INTO address (street1,street2,city,zip,primary_address,Id_Person) VALUES ('123','Adam St.', 'Alton', '01234',true,(select Id from person where username='alice'));
INSERT INTO address (street1,street2,city,zip,primary_address,Id_Person) VALUES ('234','Birch St.', 'Boston', '02345',false,(select Id from person where username='alice'));
INSERT INTO address (street1,street2,city,zip,primary_address,Id_Person) VALUES ('345','Charles St.', 'Chelms', '03455',true,(select Id from person where username='bob'));
INSERT INTO address (street1,street2,city,zip,primary_address,Id_Person) VALUES ('456','Down St.', 'Dalton', '04566',false,(select Id from person where username='bob'));
INSERT INTO address (street1,street2,city,zip,primary_address,Id_Person) VALUES ('543','East St.', 'Everett', '01112',false,(select Id from person where username='bob'));
INSERT INTO address (street1,street2,city,zip,primary_address,Id_Person) VALUES ('654','Frank St.', 'Foulton', '04322',true,(select Id from person where username='charlie'));